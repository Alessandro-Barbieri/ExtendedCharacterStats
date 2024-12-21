---@class Data
local Data = ECSLoader:CreateModule("Data")

local dataFunctionRefs

---@param refName string
---@return number | string
function Data:GetStatInfo(refName)
    local dataFunction = dataFunctionRefs[refName];
    if dataFunction then
        return dataFunction()
    else
        ECS:Print("Invalid data refName: " .. refName)
    end
end

dataFunctionRefs = {
    ["MovementSpeed"] = function() return Data:GetMovementSpeed() end,
    -- Melee
    ["MeleeAttackPower"] = function() return Data:GetMeleeAttackPower() end,
    ["MeleeCritChance"] = function() return Data:MeleeCrit() end,
    ["Expertise"] = function()
        if ECS.IsWotlk then
            return Data:GetExpertise()
        else
            return 0
        end
    end,
    ["ExpertiseRating"] = function()
        if ECS.IsWotlk then
            return Data:GetExpertiseRating()
        else
            return 0
        end
    end,
    ["MeleeArmorPenetration"] = function()
        if ECS.IsWotlk then
            return Data:GetArmorPenetration()
        else
            return 0
        end
    end,
    ["MeleeArmorPenetrationRating"] = function()
        if ECS.IsWotlk then
            return Data:GetArmorPenetrationRating()
        else
            return 0
        end
    end,
    ["MeleeHitRating"] = function()
        if ECS.IsWotlk then
            return Data:MeleeHitRating()
        else
            return 0
        end
    end,
    ["MeleeHitBonus"] = function() return Data:MeleeHitBonus() end,
    ["MeleeHitSameLevel"] = function() return Data:MeleeHitMissChanceSameLevel() end,
    ["MeleeHitBossLevel"] = function() return Data:MeleeHitMissChanceBossLevel() end,

    ["GlanceHitChanceSameLevel"] = function() return Data:GlanceHitChanceSameLevel() end,
    ["GlanceHitChanceBossLevel"] = function() return Data:GlanceHitChanceBossLevel() end,

    ["GlanceDamageSameLevel"] = function() return Data:GlanceDamageSameLevel() end,
    ["GlanceDamageBossLevel"] = function() return Data:GlanceDamageBossLevel() end,

    ["MeleeHasteRating"] = function()
        if ECS.IsWotlk then
            return Data:GetMeleeHasteRating()
        else
            return 0
        end
    end,
    ["MeleeHasteBonus"] = function()
        if ECS.IsWotlk then
            return Data:GetMeleeHasteBonus()
        else
            return 0
        end
    end,
    ["MeleeAttackSpeedMainHand"] = function() return Data:GetMeleeAttackSpeedMainHand() end,
    ["MeleeAttackSpeedOffHand"] = function() return Data:GetMeleeAttackSpeedOffHand() end,
    -- Ranged
    ["RangeAttackpower"] = function() return Data:GetRangeAttackPower() end,
    ["RangedCritChance"] = function() return Data:RangedCrit() end,
    ["RangedHitRating"] = function()
        if ECS.IsWotlk then
            return Data:RangeHitRating()
        else
            return 0
        end
    end,
    ["RangedHitBonus"] = function() return Data:RangeHitBonus() end,
    ["RangedHitSameLevel"] = function() return Data:RangeMissChanceSameLevel() end,
    ["RangedArmorPenetration"] = function()
        if ECS.IsWotlk then
            return Data:GetArmorPenetration()
        else
            return 0
        end
    end,
    ["RangedArmorPenetrationRating"] = function()
        if ECS.IsWotlk then
            return Data:GetArmorPenetrationRating()
        else
            return 0
        end
    end,
    ["RangedHitBossLevel"] = function() return Data.RangeMissChanceBossLevel() end,
    ["RangedHasteRating"] = function()
        if ECS.IsWotlk then
            return Data:GetRangedHasteRating()
        else
            return 0
        end
    end,
    ["RangedHasteBonus"] = function()
        if ECS.IsWotlk then
            return Data:GetRangedHasteBonus()
        else
            return 0
        end
    end,
    ["RangedAttackSpeed"] = function() return Data:GetRangedAttackSpeed() end,
    -- Defense
    ["Armor"] = function() return Data:GetArmorValue() end,
    ["CritImmunity"] = function()
        if ECS.IsWotlk then
            return Data:GetCritImmunity()
        else
            return 0
        end
    end,
    ["CritReduction"] = function()
        if ECS.IsWotlk then
            return Data:GetCritReduction()
        else
            return 0
        end
    end,
    ["Avoidance"] = function()
        return Data:GetAvoidance()
    end,
    ["DefenseRating"] = function()
        if ECS.IsWotlk then
            return Data:GetDefenseRating()
        else
            return 0
        end
    end,
    ["DefenseValue"] = function() return Data:GetDefenseValue() end,
    ["DodgeChance"] = function() return Data:GetDodgeChance() end,
    ["ParryChance"] = function() return Data:GetParryChance() end,
    ["BlockChance"] = function() return Data:GetBlockChance() end,
    ["BlockValue"] = function() return Data:GetBlockValue() end,
    ["ResilienceValue"] = function()
        if ECS.IsWotlk then
            return Data:GetResilienceRating()
        else
            return 0
        end
    end,
    -- Spell
    ["SpellHitRating"] = function()
        if ECS.IsWotlk then
            return Data:SpellHitRating()
        else
            return 0
        end
    end,
    ["SpellHitBonus"] = function() return Data:SpellHitBonus() end,
    ["SpellHitSameLevel"] = function() return Data:SpellMissChanceSameLevel() end,
    ["SpellHitBossLevel"] = function() return Data:SpellMissChanceBossLevel() end,
    ["SpellCritChance"] = function() return Data:GetSpellCrit(2) end,
    ["SpellHasteRating"] = function()
        if ECS.IsWotlk then
            return Data:GetSpellHasteRating()
        else
            return 0
        end
    end,
    ["SpellHasteBonus"] = function()
        if ECS.IsWotlk then
            return Data:GetSpellHasteBonus()
        else
            return "0 %"
        end
    end,
    ["SpellPenetration"] = function() return Data:GetSpellPenetration() end,
    -- MP5
    ["MP5Items"] = function() return Data:GetMP5FromItems() end,
    ["MP5Spirit"] = function() return Data:GetMP5FromSpirit() end,
    ["MP5Buffs"] = function()
        local _, mp5Buffs = Data:GetMP5FromBuffs()
        return mp5Buffs
    end,
    ["MP5Casting"] = function() return Data:GetMP5WhileCasting() end,
    ["MP5NotCasting"] = function() return Data:GetMP5OutsideCasting() end,
    -- Spell Power by school
    ["PhysicalDmg"] = function() return Data:GetSpellDamage(Data.PHYSICAL_SCHOOL) end,
    ["HolyDmg"] = function() return Data:GetSpellDamage(Data.HOLY_SCHOOL) end,
    ["FireDmg"] = function() return Data:GetSpellDamage(Data.FIRE_SCHOOL) end,
    ["NatureDmg"] = function() return Data:GetSpellDamage(Data.NATURE_SCHOOL) end,
    ["FrostDmg"] = function() return Data:GetSpellDamage(Data.FROST_SCHOOL) end,
    ["ShadowDmg"] = function() return Data:GetSpellDamage(Data.SHADOW_SCHOOL) end,
    ["ArcaneDmg"] = function() return Data:GetSpellDamage(Data.ARCANE_SCHOOL) end,
    ["BonusHealing"] = function() return Data:GetHealingPower() end,
    -- Spell Crit by school
    ["PhysicalCritChance"] = function() return Data:GetSpellCrit(Data.PHYSICAL_SCHOOL) end,
    ["HolyCritChance"] = function() return Data:GetSpellCrit(Data.HOLY_SCHOOL) end,
    ["FireCritChance"] = function() return Data:GetSpellCrit(Data.FIRE_SCHOOL) end,
    ["NatureCritChance"] = function() return Data:GetSpellCrit(Data.NATURE_SCHOOL) end,
    ["FrostCritChance"] = function() return Data:GetSpellCrit(Data.FROST_SCHOOL) end,
    ["ShadowCritChance"] = function() return Data:GetSpellCrit(Data.SHADOW_SCHOOL) end,
    ["ArcaneCritChance"] = function() return Data:GetSpellCrit(Data.ARCANE_SCHOOL) end,
    ["ArcaneHitBonus"] = function() return Data.SpellHitBonusBySchool(Data.ARCANE_SCHOOL) end,
    ["ArcaneMissChance"] = function() return 0 end,
    ["ArcaneMissChanceBoss"] = function() return 0 end,
    ["FireHitBonus"] = function() return Data.SpellHitBonusBySchool(Data.FIRE_SCHOOL) end,
    ["FireMissChance"] = function() return 0 end,
    ["FireMissChanceBoss"] = function() return 0 end,
    ["FrostHitBonus"] = function() return Data.SpellHitBonusBySchool(Data.FROST_SCHOOL) end,
    ["FrostMissChance"] = function() return 0 end,
    ["FrostMissChanceBoss"] = function() return 0 end,
    ["HolyHitBonus"] = function() return Data.SpellHitBonusBySchool(Data.HOLY_SCHOOL) end,
    ["HolyMissChance"] = function() return 0 end,
    ["HolyMissChanceBoss"] = function() return 0 end,
    ["NatureHitBonus"] = function() return Data.SpellHitBonusBySchool(Data.NATURE_SCHOOL) end,
    ["NatureMissChance"] = function() return 0 end,
    ["NatureMissChanceBoss"] = function() return 0 end,
    ["PhysicalHitBonus"] = function() return Data.SpellHitBonusBySchool(Data.PHYSICAL_SCHOOL) end,
    ["PhysicalMissChance"] = function() return 0 end,
    ["PhysicalMissChanceBoss"] = function() return 0 end,
    ["ShadowHitBonus"] = function() return Data.SpellHitBonusBySchool(Data.SHADOW_SCHOOL) end,
    ["ShadowMissChance"] = function() return 0 end,
    ["ShadowMissChanceBoss"] = function() return 0 end,
}
