---@type Data
local Data = ECSLoader:ImportModule("Data")
---@type DataUtils
local DataUtils = ECSLoader:ImportModule("DataUtils")

local _SpellCrit = {}

local _, _, classId = UnitClass("player")

---@param school number
---@return string
function Data:GetSpellCrit(school)
    local crit = _SpellCrit:GetTalentModifier(school)
    local itemBonus = _SpellCrit:GetItemModifierBySchool(school)
    local setBonus = _SpellCrit:GetSetBonus(school)

    if ECS.IsTBC then
        crit = crit + GetCombatRatingBonus(CR_CRIT_SPELL) + GetSpellCritChanceFromIntellect("player") + itemBonus + setBonus
    else
        crit = crit + GetSpellCritChance() + itemBonus + setBonus
    end

    return DataUtils:Round(crit, 2) .. "%"
end

---@param school number
---@return number
function _SpellCrit:GetTalentModifier(school)
    local modifier = _SpellCrit:GetGeneralTalentModifier()
    local modifierForSchool = _SpellCrit:GetTalentModifierBySchool(school)

    return modifier + modifierForSchool
end

---@return number
function _SpellCrit:GetGeneralTalentModifier()
    local mod = 0

    if classId == Data.MAGE then
        local talentSlot = ECS.IsTBC and 17 or 15;
        local _, _, _, _, points, _, _, _ = GetTalentInfo(1, talentSlot)
        mod = points * 1 -- 0-3% Arcane Instability
    end

    return mod
end

---@param school number
---@return number
function _SpellCrit:GetTalentModifierBySchool(school)
    if school == Data.HOLY_SCHOOL then
        return _SpellCrit:GetTalentModifierHolyCrit()
    elseif school == Data.FIRE_SCHOOL then
        return _SpellCrit:GetTalentModifierFireCrit()
    else
        return 0
    end
end

---@return number
function _SpellCrit:GetTalentModifierHolyCrit()
    local mod = 0

    if classId == Data.PRIEST then
        local _, _, _, _, points, _, _, _ = GetTalentInfo(2, 3)
        mod = points * 1 -- 0-5% Holy Specialization
    end

    return mod
end

---@return number
function _SpellCrit:GetTalentModifierFireCrit()
    local mod = 0

    if classId == Data.MAGE then
        local talentSlot = ECS.IsTBC and 14 or 13;
        local _, _, _, _, points, _, _, _ = GetTalentInfo(2, talentSlot)
        mod = points * 2 -- 0-6% Critical Mass
    end

    return mod
end

function _SpellCrit:GetItemModifierBySchool(school)
    if school == Data.HOLY_SCHOOL then
        return _SpellCrit:GetItemModifierHolyCrit()
    end

    return 0
end

function _SpellCrit:GetItemModifierHolyCrit()
    local mainHand, _ = GetInventoryItemID("player", 16)
    if mainHand == 18608 then
        return 2 -- 2% Holy Crit from Benediction
    end
    return 0
end

function _SpellCrit:GetSetBonus(school)
    local bonus = 0

    if school == Data.NATURE_SCHOOL and Data:HasNatureCritBonusModifier() then
        bonus = 3 -- 3% Nature Crit from Shaman T2
    end

    return bonus
end

function Data:GetSpellPenetration()
    return DataUtils:Round(GetSpellPenetration(), 2)
end
