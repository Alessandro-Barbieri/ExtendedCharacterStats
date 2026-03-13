-- keep-sorted start case=no
local GetBuffDataByIndex = C_UnitAuras.GetBuffDataByIndex
local GetDebuffDataByIndex = C_UnitAuras.GetDebuffDataByIndex
local GetInventoryItemID = GetInventoryItemID
local IsClassic = ECS.IsClassic
local IsPlayerSpell = C_SpellBook.IsPlayerSpell
-- keep-sorted end

---@class Data
local Data = ECSLoader:ImportModule("Data")
---@type DataUtils
local DataUtils = ECSLoader:ImportModule("DataUtils")

local _, _, classId = UnitClass("player")
local ROGUE = Data.ROGUE

---@return string
function Data:GetMovementSpeed()
    local _, runSpeed, flightSpeed, swimSpeed = GetUnitSpeed("player")

    local currentSpeed

    if (not ECS.IsClassic) and IsFlying() then
        currentSpeed = flightSpeed
    elseif IsSwimming() then
        currentSpeed = swimSpeed
    else
        currentSpeed = runSpeed
    end

    currentSpeed = currentSpeed / 7 * 100
    return DataUtils:Round(currentSpeed, 0) .. "%"
end

---@return table<number>
function Data:GetStealthDetection()
    local mod = 0
    local mod1 = 0

    -- items
    for i = 1, 18 do
        local id, _ = GetInventoryItemID("player", i)
        mod = mod + (Data.Item.DetectStealth[id] or 0)
    end

    -- buffs
    local i = 1
    repeat
        local aura = GetBuffDataByIndex("player", i)
        if aura and aura.spellId then
            mod = mod + (Data.Aura.DetectStealth[aura.spellId] or 0)
        end
        i = i + 1
    until (not aura)

    -- debuffs
    i = 1
    repeat
        local aura = GetDebuffDataByIndex("player", i)
        if aura and aura.spellId then
            mod = mod + (Data.Aura.DetectStealth[aura.spellId] or 0)
        end
        i = i + 1
    until (not aura)

    if classId == ROGUE then
        if IsPlayerSpell(2836) then
            mod1 = mod1 + 70 -- Detect Traps
        end
        mod = mod + 3 * DataUtils:GetActiveTalentSpell(Data.Talent[ROGUE].HEIGHTENED_SENSES)
    end

    return {[0] = mod, [1] = mod + mod1}
end

---@return table<number>
function Data:GetInvisibilityDetection()
    local mod = {}

    -- items
    if not IsClassic then
        for i = 1, 18 do
            local id, _ = GetInventoryItemID("player", i)
            mod[8] = (mod[8] or 0) + (Data.Item.DetectStealth[0][id] or 0)
        end
    end

    -- buffs
    local i = 1
    repeat
        local aura = GetBuffDataByIndex("player", i)
        if aura and aura.spellId then
            for k,v in pairs(Data.Aura.DetectStealth) do
                mod[k] = (mod[k] or 0) + (v[aura.spellId] or 0)
            end
        end
        i = i + 1
    until (not aura)

    -- debuffs
    i = 1
    repeat
        local aura = GetDebuffDataByIndex("player", i)
        if aura and aura.spellId then
            for k,v in pairs(Data.Aura.DetectStealth) do
                mod[k] = (mod[k] or 0) + (v[aura.spellId] or 0)
            end
        end
        i = i + 1
    until (not aura)

    if classId == ROGUE and IsPlayerSpell(2836) then
        mod[3] = (mod[3] or 0) + 300 -- Detect Traps
    end

    return mod
end