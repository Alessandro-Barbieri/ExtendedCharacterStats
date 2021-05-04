---@type i18n& 枫聖-祈福
local i18n = ECSLoader:ImportModule("i18n")

local strings = {}

function i18n:UseChinese()
    i18n.texts = strings
end

strings = {
    -- Slash commands
    ["AVAILABLE_COMMANDS"] = "可以命令",
    ["SLASH_TOGGLE"] = "/ecs toggle",
    ["SLASH_TOGGLE_DESC"] = "切换统计信息窗口",
    ["SLASH_CONFIG"] = "/ecs config",
    ["SLASH_CONFIG_DESC"] = "显示配置窗口",

    ["NAME_VERSION"] = "ECS %s",

    -- General Settings
    ["SETTINGS"] = "设置",
    ["STATS"] = "统计信息",
    ["STATS_SETTINGS"] = "统计信息设置",
    ["GENERAL"] = "一般",
    ["GENERAL_SETTINGS"] = "一般设置",
    ["SHOW_ITEM_QUALITY_COLORS"] = "显示物品等级颜色",
    ["SHOW_ITEM_QUALITY_COLORS_DESC"] = "显示/隐藏 装备边框染色 。",
    ["STATS_WINDOW_CLOSED"] = "显示ECS切换按键",
    ["STATS_WINDOW_CLOSED_DESC"] = "显示ECS打开/关闭按键",
    ["COLORIZE_STATS"] = "染色统计信息",
    ["COLORIZE_STATS_DESC"] = "添加颜色的统计概览。",
    ["SELECT_STAT_COLORS"] = "统计信息染色",
    ["FULL"] = "全部",
    ["STAT_TEXTS"] = "统计文本染色",
    ["STAT_VALUES"] = "属性染色",
    ["HEADER_FONT_SIZE"] = "标题字体大小",
    ["HEADER_FONT_SIZE_DESC"] = "更改标题的字体大小 (例如：近战)",
    ["STAT_FONT_SIZE"] = "统计字体大小",
    ["STAT_FONT_SIZE_DESC"] = "更改统计行的字体大小 (例如：暴击)",
    ["WINDOW_WIDTH"] = "窗口宽度",
    ["WINDOW_WIDTH_DESC"] = "更改统计窗口的宽度",
    ["SELECT_LANGUAGE"] = "语言",

    -- Stat Settings
    ["HIT_BONUS_SETTING"] = "命中几率",
    ["MISS_CHANCE_SETTING"] = "未命中几率",
    ["MISS_CHANCE_BOSS_SETTING"] = "未命中 Boss",
    -- General Stat Settings
    ["GENERAL_STATS"] = "显示常规属性信息",
    ["GENERAL_STATS_DESC"] = "显示/隐藏 所有常规属性信息。",
    ["MOVEMENT_SPEED_SETTING"] = "显示移动速度",
    ["MOVEMENT_SPEED_SETTING_DESC"] = "显示/隐藏 移动速度",
    -- Melee Settings
    ["MELEE_SETTINGS"] = "显示近战属性",
    ["MELEE_SETTINGS_DESC"] = "显示/隐藏 所有近战属性",
    ["MELEE_ATTACK_POWER_SETTING"] = "近战攻击强度",
    ["MELEE_ATTACK_POWER_SETTING_DESC"] = "显示/隐藏 近战攻击强度",
    ["MELEE_CRIT_SETTING"] = "近战暴击",
    ["MELEE_CRIT_SETTING_DESC"] = "显示/隐藏 近战暴击几率",
    ["MELEE_HIT_SETTING"] = "近战命中",
    ["MELEE_HIT_SETTING_DESC"] = "显示/隐藏 所有近战命中率",
    ["MELEE_HIT_VALUES_SETTING"] = "近战命中率",
    ["MELEE_HIT_BONUS_SETTING_DESC"] = "显示/隐藏 近战命中率",
    ["MELEE_MISS_CHANCE_SETTING_DESC"] = "显示/隐藏 针对同等级敌人的近战未命中率",
    ["MELEE_MISS_CHANCE_BOSS_SETTING_DESC"] = "显示/隐藏 针对BOSS的近战未命中率 (+3 等级)。",
    ["MELEE_ATTACK_SPEED_SETTING"] = "Attack Speed",
    ["MELEE_ATTACK_SPEED_SETTING_DESC"] =  "Shows/Hides the melee attack speed.",
    ["MELEE_ATTACK_SPEED_MAIN_HAND_SETTING"] = "Main Hand",
    ["MELEE_ATTACK_SPEED_MAIN_HAND_SETTING_DESC"] = "Shows/Hides the attack speed of the main hand.",
    ["MELEE_ATTACK_SPEED_OFF_HAND_SETTING"] = "Off Hand",
    ["MELEE_ATTACK_SPEED_OFF_HAND_SETTING_DESC"] = "Shows/Hides the attack speed of the off hand.",
    -- Range Settings
    ["RANGED_SETTINGS"] = "显示远程属性",
    ["RANGED_SETTINGS_DESC"] = "显示/隐藏 所有远程属性",
    ["RANGED_ATTACK_POWER_SETTING"] = "远程攻击强度",
    ["RANGED_ATTACK_POWER_SETTING_DESC"] = "显示/隐藏 远程攻击强度",
    ["RANGED_CRIT_SETTING"] = "远程暴击",
    ["RANGED_CRIT_SETTING_DESC"] = "显示/隐藏 远程暴击",
    ["RANGED_HIT_SETTING"] = "远程命中",
    ["RANGED_HIT_SETTING_DESC"] = "显示/隐藏 所有远程命中",
    ["RANGED_HIT_VALUES_SETTING"] = "远程命中率",
    ["RANGED_HIT_BONUS_SETTING_DESC"] = "显示/隐藏 远程命中率",
    ["RANGED_MISS_CHANCE_SETTING_DESC"] = "显示/隐藏 针对同等级敌人的远程未命中率",
    ["RANGED_MISS_CHANCE_BOSS_SETTING_DESC"] = "显示/隐藏 针对BOSS的远程未命中率 (+3 等级)。",
    ["RANGED_ATTACK_SPEED_SETTING"] = "Attack Speed",
    ["RANGED_ATTACK_SPEED_SETTING_DESC"] = "Shows/Hides the ranged attack speed.",
    -- Defense Settings
    ["DEFENSE_SETTINGS"] = "显示防御属性",
    ["DEFENSE_SETTINGS_DESC"] = "显示/隐藏 所有防御属性",
    ["ARMOR_SETTING"] = "护甲",
    ["ARMOR_SETTING_DESC"] = "显示/隐藏 护甲值",
    ["DEFENSE_VALUE_SETTING"] = "防御",
    ["DEFENSE_VALUE_SETTING_DESC"] = "显示/隐藏 防御值",
    ["BLOCK_CHANCE_SETTING"] = "格挡几率",
    ["BLOCK_CHANCE_SETTING_DESC"] = "显示/隐藏 格挡几率",
    ["BLOCK_VALUE_SETTING"] = "格挡值",
    ["BLOCK_VALUE_SETTING_DESC"] = "显示/隐藏 格挡值",
    ["PARRY_CHANCE_SETTING"] = "招架",
    ["PARRY_CHANCE_SETTING_DESC"] = "显示/隐藏 招架几率",
    ["DODGE_CHANCE_SETTING"] = "躲闪",
    ["DODGE_CHANCE_SETTING_DESC"] = "显示/隐藏 躲闪几率",
    -- Mana Settings
    ["MANA_SETTINGS"] = "显示法力回复",
    ["MANA_SETTINGS_DESC"] = "显示/隐藏 所有法力回复",
    ["MP5_ITEMS_SETTING"] = "装备回蓝 ",
    ["MP5_ITEMS_SETTING_DESC"] = "显示/隐藏 装备回蓝",
    ["MP5_SPIRIT_SETTING"] = "精神回蓝",
    ["MP5_SPIRIT_SETTING_DESC"] = "显示/隐藏 精神回蓝",
    ["MP5_BUFFS_SETTING"] = "增益回蓝",
    ["MP5_BUFFS_SETTING_DESC"] = "显示/隐藏 增益回蓝",
    ["MP5_CASTING_SETTING"] = "附魔回蓝",
    ["MP5_CASTING_SETTING_DESC"] = "显示/隐藏 附魔回蓝",
    -- Spell Settings
    ["SPELL_SETTINGS"] = "显示法术属性",
    ["SPELL_SETTINGS_DESC"] = "显示/隐藏 法术属性",
    ["SPELL_CRIT_SETTING"] = "法术暴击",
    ["SPELL_CRIT_SETTING_DESC"] = "显示/隐藏 法术暴击",
    ["SPELL_PENETRATION_SETTING"] = "Spell Penetration",
    ["SPELL_PENETRATION_SETTING_DESC"] = "Shows/Hides the spell penetration value.",
    ["SPELL_HIT_SETTING"] = "法术命中",
    ["SPELL_HIT_SETTING_DESC"] = "显示/隐藏 法术命中",
    ["SPELL_HIT_VALUES_SETTING"] = "法术命中率",
    ["SPELL_HIT_BONUS_SETTING_DESC"] = "显示/隐藏 法术命中几率",
    ["SPELL_MISS_CHANCE_SETTING_DESC"] = "显示/隐藏 针对同等级敌人的法术未命中率",
    ["SPELL_MISS_CHANCE_BOSS_SETTING_DESC"] = "显示/隐藏 针对BOSS的法术未命中率 (+3 等级)。",
    -- Spell Power
    ["SPELL_POWER_SETTINGS"] = "法术强度",
    ["SPELL_POWER_STATS_SETTINGS"] = "显示法术强度属性",
    ["SPELL_POWER_STATS_SETTINGS_DESC"] = "显示/隐藏 法术强度属性",
    ["HEALING_POWER_SETTING"] = "法术治疗",
    ["HEALING_POWER_SETTING_DESC"] = "显示/隐藏 法术治疗",
    ["ARCANE_DAMAGE_SETTING"] = "奥术伤害",
    ["ARCANE_DAMAGE_SETTING_DESC"] = "显示/隐藏 奥术伤害",
    ["ARCANE_CRIT_SETTING"] = "奥术法术暴击",
    ["ARCANE_CRIT_SETTING_DESC"] = "显示/隐藏 奥术暴击",
    ["FIRE_DAMAGE_SETTING"] = "火焰伤害",
    ["FIRE_DAMAGE_SETTING_DESC"] = "显示/隐藏 火焰伤害",
    ["FIRE_CRIT_SETTING"] = "火焰暴击",
    ["FIRE_CRIT_SETTING_DESC"] = "显示/隐藏 火焰暴击",
    ["FROST_DAMAGE_SETTING"] = "冰霜伤害",
    ["FROST_DAMAGE_SETTING_DESC"] = "显示/隐藏 冰霜伤害",
    ["FROST_CRIT_SETTING"] = "冰霜暴击",
    ["FROST_CRIT_SETTING_DESC"] = "显示/隐藏 冰霜暴击",
    ["HOLY_DAMAGE_SETTING"] = "神圣伤害",
    ["HOLY_DAMAGE_SETTING_DESC"] = "显示/隐藏 神圣伤害",
    ["HOLY_CRIT_SETTING"] = "神圣暴击",
    ["HOLY_CRIT_SETTING_DESC"] = "显示/隐藏 神圣暴击",
    ["NATURE_DAMAGE_SETTING"] = "自然伤害",
    ["NATURE_DAMAGE_SETTING_DESC"] = "显示/隐藏 自然伤害",
    ["NATURE_CRIT_SETTING"] = "自然暴击",
    ["NATURE_CRIT_SETTING_DESC"] = "显示/隐藏 自然暴击",
    ["PHYSICAL_DAMAGE_SETTING"] = "物理伤害",
    ["PHYSICAL_DAMAGE_SETTING_DESC"] = "显示/隐藏 物理伤害",
    ["PHYSICAL_CRIT_SETTING"] = "物理暴击",
    ["PHYSICAL_CRIT_SETTING_DESC"] = "显示/隐藏 物理暴击",
    ["SHADOW_DAMAGE_SETTING"] = "暗影伤害",
    ["SHADOW_DAMAGE_SETTING_DESC"] = "显示/隐藏 暗影伤害",
    ["SHADOW_CRIT_SETTING"] = "暗影暴击",
    ["SHADOW_CRIT_SETTING_DESC"] = "显示/隐藏 暗影暴击",

    -- Stats
    ["MOVEMENT_SPEED"] = "移动速度: ",

    ["HIT"] = "命中",
    ["MISS"] = "未命中: ",
    ["MISS_BOSS"] = "未命中 (等级 + 3): ",
    ["BONUS"] = "命中: ",
    ["ATTACK_POWER"] = "攻击强度: ",
    ["CRIT_CHANCE"] = "暴击几率: ",
    ["ATTACK_SPEED_HEADER"] = "Attack Speed",
    ["ATTACK_SPEED"] = "Attack Speed: ",
    ["ATTACK_SPEED_MAIN_HAND"] = "Main Hand: ",
    ["ATTACK_SPEED_OFF_HAND"] = "Off Hand: ",

    ["MELEE"] = "近战",
    ["RANGED"] = "远程",
    ["DEFENSE"] = "防御",
    ["DEFENSE_VALUE"] = "防御: ",
    ["ARMOR"] = "护甲: ",
    ["MANA"] = "法力回复",

    ["BLOCK_CHANCE"] = "格挡几率: ",
    ["BLOCK_VALUE"] = "格挡值: ",
    ["PARRY_CHANCE"] = "招架几率: ",
    ["DODGE_CHANCE"] = "躲闪几率: ",

    ["MP5_ITEMS"] = "装备回蓝: ",
    ["MP5_SPIRIT"] = "精神回蓝: ",
    ["MP5_BUFFS"] = "增益回蓝: ",
    ["MP5_CASTING"] = "附魔回蓝: ",

    ["SPELL"] = "法术强度",
    ["SPELL_PENETRATION"] = "Penetration: ",

    ["SPELL_POWER"] = "法术强度",
    ["HEALING_POWER"] = "法术治疗: ",
    ["ARCANCE_DMG"] = "奥术伤害: ",
    ["ARCANCE_CRIT"] = "奥术暴击: ",
    ["FIRE_DMG"] = "火焰伤害: ",
    ["FIRE_CRIT"] = "火焰暴击: ",
    ["FROST_DMG"] = "冰霜伤害: ",
    ["FROST_CRIT"] = "冰霜暴击: ",
    ["HOLY_DMG"] = "神圣伤害: ",
    ["HOLY_CRIT"] = "神圣暴击: ",
    ["NATURE_DMG"] = "自然伤害: ",
    ["NATURE_CRIT"] = "自然暴击: ",
    ["PHYSICAL_DMG"] = "物理伤害: ",
    ["PHYSICAL_CRIT"] = "物理暴击: ",
    ["SHADOW_DMG"] = "暗影伤害: ",
    ["SHADOW_CRIT"] = "暗影暴击: ",

}
