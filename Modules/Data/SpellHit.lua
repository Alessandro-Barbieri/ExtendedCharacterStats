---@type Data
local Data = ECSLoader:ImportModule("Data")
---@type DataUtils
local DataUtils = ECSLoader:ImportModule("DataUtils")

local function _GetTalentModifierSpellHit()
    local _, _, classId = UnitClass("player")
    local mod = 0

    if classId == 5 then -- Priest
        local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 5)
        mod = points * 2 -- 0-10% from Shadow Focus
    end

    if classId == 8 then -- Mage
        local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 3)
        if ECS.IsTBC then
            mod = points * 1 -- 0-3% from Elemental Precision
        else
            mod = points * 2 -- 0-6% from Elemental Precision
        end
    end

    return mod
end

---@return number
local function _GetSpellHitRating()
    if CR_HIT_SPELL then
        return GetCombatRatingBonus(CR_HIT_SPELL)
    end
    return GetSpellHitModifier()
end

function Data:SpellHitBonus()
    local hit = _GetTalentModifierSpellHit()
    local mod = _GetSpellHitRating()
    if mod then
        hit = hit + mod
    end

    return DataUtils:Round(hit, 2) .. "%"
end

function Data:SpellMissChanceSameLevel()
    local missChance = 4

    missChance = missChance - _GetTalentModifierSpellHit()
    local mod = _GetSpellHitRating()
    if mod then
        missChance = missChance - mod
    end

    if missChance < 1 then
        missChance = 1
    elseif missChance > 100 then
        missChance = 100
    end

    return DataUtils:Round(missChance, 2) .. "%"
end

function Data:SpellMissChanceBossLevel()
    local missChance = 17

    missChance = missChance - _GetTalentModifierSpellHit()
    local mod = _GetSpellHitRating()
    if mod then
        missChance = missChance - mod
    end

    if missChance < 1 then
        missChance = 1
    elseif missChance > 100 then
        missChance = 100
    end

    return DataUtils:Round(missChance, 2) .. "%"
end