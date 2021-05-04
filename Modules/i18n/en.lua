---@type i18n
local i18n = ECSLoader:ImportModule("i18n")

local strings = {}

function i18n:UseEnglish()
    i18n.texts = strings
end

strings = {
    -- Slash commands
    ["AVAILABLE_COMMANDS"] = "Available Commands",
    ["SLASH_TOGGLE"] = "/ecs toggle",
    ["SLASH_TOGGLE_DESC"] = "Toggles the visibility of the stats window",
    ["SLASH_CONFIG"] = "/ecs config",
    ["SLASH_CONFIG_DESC"] = "Shows the configuration window",

    ["NAME_VERSION"] = "ECS %s",

    -- General Settings
    ["SETTINGS"] = "Settings",
    ["STATS"] = "Stats",
    ["STATS_SETTINGS"] = "Stats Settings",
    ["GENERAL"] = "General",
    ["GENERAL_SETTINGS"] = "General Settings",
    ["SHOW_ITEM_QUALITY_COLORS"] = "Show Item Quaility Colors",
    ["SHOW_ITEM_QUALITY_COLORS_DESC"] = "Shows/Hides the colored frames around equiped items.",
    ["STATS_WINDOW_CLOSED"] = "Hide ECS when opening character tab",
    ["STATS_WINDOW_CLOSED_DESC"] = "Hides the stats windows when opening the character tab.",
    ["COLORIZE_STATS"] = "Colorize Stats",
    ["COLORIZE_STATS_DESC"] = "Adds colors to the stats overview.",
    ["SELECT_STAT_COLORS"] = "Stats colorization",
    ["FULL"] = "Full",
    ["STAT_TEXTS"] = "Stat texts",
    ["STAT_VALUES"] = "Stat values",
    ["HEADER_FONT_SIZE"] = "Header Font Size",
    ["HEADER_FONT_SIZE_DESC"] = "Changes the font size of the headers (e.g. Melee)",
    ["STAT_FONT_SIZE"] = "Stat Font Size",
    ["STAT_FONT_SIZE_DESC"] = "Changes the font size of the stat lines (e.g. Crit)",
    ["WINDOW_WIDTH"] = "Window Width",
    ["WINDOW_WIDTH_DESC"] = "Changes the width of the stats window",
    ["SELECT_LANGUAGE"] = "Language",

    -- Stat Settings
    ["HIT_BONUS_SETTING"] = "Hit Bonus",
    ["MISS_CHANCE_SETTING"] = "Miss Chance",
    ["MISS_CHANCE_BOSS_SETTING"] = "Miss Chance Boss",
    -- General Stat Settings
    ["GENERAL_STATS"] = "Show General Stats",
    ["GENERAL_STATS_DESC"] = "Shows/Hides all general stats.",
    ["MOVEMENT_SPEED_SETTING"] = "Show Movement Speed",
    ["MOVEMENT_SPEED_SETTING_DESC"] = "Shows/Hides the movement speed value.",
    -- Melee Settings
    ["MELEE_SETTINGS"] = "Show Melee Stats",
    ["MELEE_SETTINGS_DESC"] = "Shows/Hides all melee stats.",
    ["MELEE_ATTACK_POWER_SETTING"] = "Melee Attack Power",
    ["MELEE_ATTACK_POWER_SETTING_DESC"] = "Shows/Hides the melee attack power value.",
    ["MELEE_CRIT_SETTING"] = "Melee Crit",
    ["MELEE_CRIT_SETTING_DESC"] = "Shows/Hides the melee crit chance.",
    ["MELEE_HIT_SETTING"] = "Melee Hit",
    ["MELEE_HIT_SETTING_DESC"] = "Shows/Hides all melee hit chance.",
    ["MELEE_HIT_VALUES_SETTING"] = "Melee Hit Values",
    ["MELEE_HIT_BONUS_SETTING_DESC"] = "Shows/Hides the melee hit bonus.",
    ["MELEE_MISS_CHANCE_SETTING_DESC"] = "Shows/Hides the melee miss chance against enemies on the same level.",
    ["MELEE_MISS_CHANCE_BOSS_SETTING_DESC"] = "Shows/Hides the melee miss chance against boss enemies (+3 Level).",
    ["MELEE_ATTACK_SPEED_SETTING"] = "Attack Speed",
    ["MELEE_ATTACK_SPEED_SETTING_DESC"] =  "Shows/Hides the melee attack speed.",
    ["MELEE_ATTACK_SPEED_MAIN_HAND_SETTING"] = "Main Hand",
    ["MELEE_ATTACK_SPEED_MAIN_HAND_SETTING_DESC"] = "Shows/Hides the attack speed of the main hand.",
    ["MELEE_ATTACK_SPEED_OFF_HAND_SETTING"] = "Off Hand",
    ["MELEE_ATTACK_SPEED_OFF_HAND_SETTING_DESC"] = "Shows/Hides the attack speed of the off hand.",
    -- Range Settings
    ["RANGED_SETTINGS"] = "Show Ranged Stats",
    ["RANGED_SETTINGS_DESC"] = "Shows/Hides all ranged stats.",
    ["RANGED_ATTACK_POWER_SETTING"] = "Melee Attack Power",
    ["RANGED_ATTACK_POWER_SETTING_DESC"] = "Shows/Hides the ranged attack power value.",
    ["RANGED_CRIT_SETTING"] = "Ranged Crit",
    ["RANGED_CRIT_SETTING_DESC"] = "Shows/Hides the ranged crit chance.",
    ["RANGED_HIT_SETTING"] = "Ranged Hit",
    ["RANGED_HIT_SETTING_DESC"] = "Shows/Hides all ranged hit chance.",
    ["RANGED_HIT_VALUES_SETTING"] = "Ranged Hit Values",
    ["RANGED_HIT_BONUS_SETTING_DESC"] = "Shows/Hides the ranged hit bonus.",
    ["RANGED_MISS_CHANCE_SETTING_DESC"] = "Shows/Hides the ranged miss chance against enemies on the same level.",
    ["RANGED_MISS_CHANCE_BOSS_SETTING_DESC"] = "Shows/Hides the ranged miss chance against boss enemies (+3 Level).",
    ["RANGED_ATTACK_SPEED_SETTING"] = "Attack Speed",
    ["RANGED_ATTACK_SPEED_SETTING_DESC"] = "Shows/Hides the ranged attack speed.",
    -- Defense Settings
    ["DEFENSE_SETTINGS"] = "Show Defense Stats",
    ["DEFENSE_SETTINGS_DESC"] = "Shows/Hides all defense stats.",
    ["ARMOR_SETTING"] = "Armor Value",
    ["ARMOR_SETTING_DESC"] = "Shows/Hides the armor value.",
    ["DEFENSE_VALUE_SETTING"] = "Defense Value",
    ["DEFENSE_VALUE_SETTING_DESC"] = "Shows/Hides the defense value.",
    ["BLOCK_CHANCE_SETTING"] = "Block Chance",
    ["BLOCK_CHANCE_SETTING_DESC"] = "Shows/Hides the block chance.",
    ["BLOCK_VALUE_SETTING"] = "Block Value",
    ["BLOCK_VALUE_SETTING_DESC"] = "Shows/Hides the block value.",
    ["PARRY_CHANCE_SETTING"] = "Parry Chance",
    ["PARRY_CHANCE_SETTING_DESC"] = "Shows/Hides the parry chance.",
    ["DODGE_CHANCE_SETTING"] = "Dodge Chance",
    ["DODGE_CHANCE_SETTING_DESC"] = "Shows/Hides the dodge chance.",
    -- Mana Settings
    ["MANA_SETTINGS"] = "Show Mana Stats",
    ["MANA_SETTINGS_DESC"] = "Shows/Hides all mana stats.",
    ["MP5_ITEMS_SETTING"] = "MP5 Items",
    ["MP5_ITEMS_SETTING_DESC"] = "Shows/Hides the MP5 value from items.",
    ["MP5_SPIRIT_SETTING"] = "MP5 Spirit",
    ["MP5_SPIRIT_SETTING_DESC"] = "Shows/Hides the MP5 value from spirit.",
    ["MP5_BUFFS_SETTING"] = "MP5 Buffs",
    ["MP5_BUFFS_SETTING_DESC"] = "Shows/Hides the MP5 value from buffs.",
    ["MP5_CASTING_SETTING"] = "MP5 Casting",
    ["MP5_CASTING_SETTING_DESC"] = "Shows/Hides the MP5 while casting value.",
    -- Spell Settings
    ["SPELL_SETTINGS"] = "Show Spell Stats",
    ["SPELL_SETTINGS_DESC"] = "Shows/Hides all spell stats.",
    ["SPELL_CRIT_SETTING"] = "Spell Crit",
    ["SPELL_CRIT_SETTING_DESC"] = "Shows/Hides the spell crit chance.",
    ["SPELL_PENETRATION_SETTING"] = "Spell Penetration",
    ["SPELL_PENETRATION_SETTING_DESC"] = "Shows/Hides the spell penetration value.",
    ["SPELL_HIT_SETTING"] = "Spell Hit",
    ["SPELL_HIT_SETTING_DESC"] = "Shows/Hides all spell hit chance.",
    ["SPELL_HIT_VALUES_SETTING"] = "Spell Hit Values",
    ["SPELL_HIT_BONUS_SETTING_DESC"] = "Shows/Hides the spell hit bonus.",
    ["SPELL_MISS_CHANCE_SETTING_DESC"] = "Shows/Hides the spell miss chance against enemies on the same level.",
    ["SPELL_MISS_CHANCE_BOSS_SETTING_DESC"] = "Shows/Hides the spell miss chance against boss enemies (+3 Level).",
    -- Spell Power
    ["SPELL_POWER_SETTINGS"] = "Spell Power",
    ["SPELL_POWER_STATS_SETTINGS"] = "Show Spell Power Stats",
    ["SPELL_POWER_STATS_SETTINGS_DESC"] = "Shows/Hides all spell power stats.",
    ["HEALING_POWER_SETTING"] = "Healing Power",
    ["HEALING_POWER_SETTING_DESC"] = "Shows/Hides the healing power value.",
    ["ARCANE_DAMAGE_SETTING"] = "Arcane Damage",
    ["ARCANE_DAMAGE_SETTING_DESC"] = "Shows/Hides the arcane damage value.",
    ["ARCANE_CRIT_SETTING"] = "Arcane Crit",
    ["ARCANE_CRIT_SETTING_DESC"] = "Shows/Hides the arcane crit chance.",
    ["FIRE_DAMAGE_SETTING"] = "Fire Damage",
    ["FIRE_DAMAGE_SETTING_DESC"] = "Shows/Hides the fire damage value.",
    ["FIRE_CRIT_SETTING"] = "Fire Crit",
    ["FIRE_CRIT_SETTING_DESC"] = "Shows/Hides the fire crit chance.",
    ["FROST_DAMAGE_SETTING"] = "Frost Damage",
    ["FROST_DAMAGE_SETTING_DESC"] = "Shows/Hides the frost damage value.",
    ["FROST_CRIT_SETTING"] = "Frost Crit",
    ["FROST_CRIT_SETTING_DESC"] = "Shows/Hides the frost crit chance.",
    ["HOLY_DAMAGE_SETTING"] = "Holy Damage",
    ["HOLY_DAMAGE_SETTING_DESC"] = "Shows/Hides the holy damage value.",
    ["HOLY_CRIT_SETTING"] = "Holy Crit",
    ["HOLY_CRIT_SETTING_DESC"] = "Shows/Hides the holy crit chance.",
    ["NATURE_DAMAGE_SETTING"] = "Nature Damage",
    ["NATURE_DAMAGE_SETTING_DESC"] = "Shows/Hides the nature damage value.",
    ["NATURE_CRIT_SETTING"] = "Nature Crit",
    ["NATURE_CRIT_SETTING_DESC"] = "Shows/Hides the nature crit chance.",
    ["PHYSICAL_DAMAGE_SETTING"] = "Physical Damage",
    ["PHYSICAL_DAMAGE_SETTING_DESC"] = "Shows/Hides the physical damage value.",
    ["PHYSICAL_CRIT_SETTING"] = "Physical Crit",
    ["PHYSICAL_CRIT_SETTING_DESC"] = "Shows/Hides the physical crit chance.",
    ["SHADOW_DAMAGE_SETTING"] = "Shadow Damage",
    ["SHADOW_DAMAGE_SETTING_DESC"] = "Shows/Hides the shadow damage value.",
    ["SHADOW_CRIT_SETTING"] = "Shadow Crit",
    ["SHADOW_CRIT_SETTING_DESC"] = "Shows/Hides the shadow crit chance.",

    -- Stats
    ["MOVEMENT_SPEED"] = "Movement Speed: ",

    ["HIT"] = "Hit",
    ["MISS"] = "Miss: ",
    ["MISS_BOSS"] = "Miss (Lvl + 3): ",
    ["BONUS"] = "Bonus: ",
    ["ATTACK_POWER"] = "Attack Power: ",
    ["CRIT_CHANCE"] = "Crit Chance: ",
    ["ATTACK_SPEED_HEADER"] = "Attack Speed",
    ["ATTACK_SPEED"] = "Attack Speed: ",
    ["ATTACK_SPEED_MAIN_HAND"] = "Main Hand: ",
    ["ATTACK_SPEED_OFF_HAND"] = "Off Hand: ",

    ["MELEE"] = "Melee",
    ["RANGED"] = "Ranged",
    ["DEFENSE"] = "Defense",
    ["DEFENSE_VALUE"] = "Defense: ",
    ["ARMOR"] = "Armor: ",
    ["MANA"] = "Mana",

    ["BLOCK_CHANCE"] = "Block Chance: ",
    ["BLOCK_VALUE"] = "Block Value: ",
    ["PARRY_CHANCE"] = "Parry Chance: ",
    ["DODGE_CHANCE"] = "Dodge Chance: ",

    ["MP5_ITEMS"] = "MP5 (Items): ",
    ["MP5_SPIRIT"] = "MP5 (Spirit): ",
    ["MP5_BUFFS"] = "MP5 (Buffs): ",
    ["MP5_CASTING"] = "MP5 (Casting): ",

    ["SPELL"] = "Spell",
    ["SPELL_PENETRATION"] = "Penetration: ",

    ["SPELL_POWER"] = "Spell Power",
    ["HEALING_POWER"] = "Healing Power: ",
    ["ARCANCE_DMG"] = "Arcane Damage: ",
    ["ARCANCE_CRIT"] = "Arcane Crit: ",
    ["FIRE_DMG"] = "Fire Damage: ",
    ["FIRE_CRIT"] = "Fire Crit: ",
    ["FROST_DMG"] = "Frost Damage: ",
    ["FROST_CRIT"] = "Frost Crit: ",
    ["HOLY_DMG"] = "Holy Damage: ",
    ["HOLY_CRIT"] = "Holy Crit: ",
    ["NATURE_DMG"] = "Nature Damage: ",
    ["NATURE_CRIT"] = "Nature Crit: ",
    ["PHYSICAL_DMG"] = "Physical Damage: ",
    ["PHYSICAL_CRIT"] = "Physical Crit: ",
    ["SHADOW_DMG"] = "Shadow Damage: ",
    ["SHADOW_CRIT"] = "Shadow Crit: ",
}
