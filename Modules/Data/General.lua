---@type Data
local Data = ECSLoader:ImportModule("Data")
---@type DataUtils
local DataUtils = ECSLoader:ImportModule("DataUtils")


---@return string
function Data:GetMovementSpeed()
    local _, runSpeed, flightSpeed, swimSpeed = GetUnitSpeed("player")

    local currentSpeed

    if ECS.IsWotlk and IsFlying() then
        currentSpeed = flightSpeed
    elseif IsSwimming() then
        currentSpeed = swimSpeed
    else
        currentSpeed = runSpeed
    end

    currentSpeed = currentSpeed / 7 * 100
    return DataUtils:Round(currentSpeed, 0) .. "%"
end

---@return number, number
function Data:GetHP5()
    local hp5 = _HP5:GetMP5FromSpirit()
    local mod = 1
    local combatModifier = 0
    local maxhealth = UnitHealthMax("player")

    if C_SpellBook.IsSpellKnown(20555) then -- Troll passive
        mod = mod + 0.1
        combatModifier = combatModifier + 0.1
    end

    for i = 1, 18 do
        local itemLink = GetInventoryItemLink("player", i)
        if itemLink then
            local stats = GetItemStats(itemLink)
            if stats then
                local statHP5 = stats["ITEM_MOD_HEALTH_REGENERATION_SHORT"]
                if statHP5 then
                    hp5 = hp5 + statHP5 + 1
                end
            end
            local enchant = DataUtils:GetEnchantFromItemLink(itemLink)
            if enchant then
                hp5 = hp5 + (Data.Enchant.HealthRegen[enchant] or 0)
            end
        end
    end
    
    i = 1
    repeat
        local aura = C_UnitAuras.GetBuffDataByIndex("player", i)
        if aura and aura.spellId then
            if aura.spellId == 2645 and C_SpellBook.IsSpellKnown(59289) then
                hp5 = hp5 + 0.01 * 5 * maxhealth -- Glyph of Ghost Wolf
            end
            mod = mod + (Data.Aura.HealthRegenModifier[aura.spellId] or 0)
            hp5 = hp5 + (Data.Aura.HealthRegen[aura.spellId] or 0)
            hp5 = hp5 + (Data.Aura.PercentageHealthRegen[aura.spellId] or 0) * maxhealth
        end
        i = i + 1
    until (not aura)

    i = 1
    repeat
        local aura = C_UnitAuras.GetDebuffDataByIndex("player", i)
        if aura and aura.spellId then
            hp5 = hp5 + (Data.Aura.PercentageHealthRegen[aura.spellId] or 0) * maxhealth
            mod = mod + (Data.Aura.HealthRegenModifier[aura.spellId] or 0)
        end
        i = i + 1
    until (not aura)

    hp5 = hp5 * mod
    return hp5, hp5 * combatModifier
end

---@return number
function _HP5:GetHP5FromSpirit()

    return DataUtils:Round(base * 5, 2)
end
