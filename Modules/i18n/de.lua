---@type i18n
local i18n = ECSLoader:ImportModule("i18n")

local strings = {}

function i18n:UseGerman()
    i18n.texts = strings
end

strings = {
    -- Slash commands
    ["AVAILABLE_COMMANDS"] = "Verfügbare Befehle",
    ["SLASH_TOGGLE"] = "/ecs toggle",
    ["SLASH_TOGGLE_DESC"] = "Öffnet/Schließt das Attributefenster",
    ["SLASH_CONFIG"] = "/ecs config",
    ["SLASH_CONFIG_DESC"] = "Öffnet/Schließt das Einstellungsfenster",

    ["NAME_VERSION"] = "ECS %s",

    -- General Settings
    ["SETTINGS"] = "Einstellungen",
    ["STATS"] = "Werte",
    ["STATS_SETTINGS"] = "Werte Einstellungen",
    ["GENERAL"] = "Allgemein",
    ["GENERAL_SETTINGS"] = "Allgemeine Einstellungen",
    ["SHOW_ITEM_QUALITY_COLORS"] = "Zeige Item Qualitätsfarben",
    ["SHOW_ITEM_QUALITY_COLORS_DESC"] = "Zeigt/Versteckt die farbigen Ränder an ausgerüsteten Gegenständen.",
    ["STATS_WINDOW_CLOSED"] = "Verstecke das ECS Fenster beim Öffnen des Charakterfensters",
    ["STATS_WINDOW_CLOSED_DESC"] = "Versteckt das Wertefenster beim Öffnen des Characterfensters.",
    ["COLORIZE_STATS"] = "Werte färben",
    ["COLORIZE_STATS_DESC"] = "Fügt dem Wertefenster Farben hinzu.",
    ["SELECT_STAT_COLORS"] = "Werte Farbe",
    ["FULL"] = "Komplett",
    ["STAT_TEXTS"] = "Wertenamen",
    ["STAT_VALUES"] = "Wertezahlen",
    ["HEADER_FONT_SIZE"] = "Überschriften Schriftgröße",
    ["HEADER_FONT_SIZE_DESC"] = "Ändert die Schriftgröße der Überschriften (z.B. Nahkampf)",
    ["STAT_FONT_SIZE"] = "Werte Schriftgröße",
    ["STAT_FONT_SIZE_DESC"] = "Ändert die Schriftgröße der Werte (z.B. Kritische Chance)",
    ["WINDOW_WIDTH"] = "Fensterbreite",
    ["WINDOW_WIDTH_DESC"] = "Ändert die Breite des Wertefensters",
    ["SELECT_LANGUAGE"] = "Sprache",

    -- Stat Settings
    ["HIT_BONUS_SETTING"] = "Trefferwertungsbonus",
    ["MISS_CHANCE_SETTING"] = "Chance zu verfehlen",
    ["MISS_CHANCE_BOSS_SETTING"] = "Chance zu verfehlen (Boss)",
    -- Melee Settings
    ["MELEE_SETTINGS"] = "Nahkampfwerte anzeigen",
    ["MELEE_SETTINGS_DESC"] = "Zeigt/Versteckt alle Nahkampfwerte.",
    ["MELEE_ATTACK_POWER_SETTING"] = "Nahkampf Angriffskraft",
    ["MELEE_ATTACK_POWER_SETTING_DESC"] = "Zeigt/Versteckt den Nahkampf Angriffskraftwert.",
    ["MELEE_CRIT_SETTING"] = "Nahkampf Kritisch",
    ["MELEE_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance im Nahkampf kritisch zu treffen.",
    ["MELEE_HIT_SETTING"] = "Nahkampf Trefferwertung",
    ["MELEE_HIT_SETTING_DESC"] = "Zeigt/Versteckt alle Trefferwertungen im Nahkampf.",
    ["MELEE_HIT_VALUES_SETTING"] = "Nahkampf Trefferwertungen",
    ["MELEE_HIT_BONUS_SETTING_DESC"] = "Zeigt/Versteckt den Bonus auf die Nahkampf Trefferwertung.",
    ["MELEE_MISS_CHANCE_SETTING_DESC"] = "Zeigt/Versteckt die Chance einen Gegner des gleichen Levels im Nahkampf zu verfehlen.",
    ["MELEE_MISS_CHANCE_BOSS_SETTING_DESC"] = "Zeigt/Versteckt die Chance einen Gegner mit 3 Level über dem eigenen im Nahkampf zu verfehlen.",
    -- Range Settings
    ["RANGED_SETTINGS"] = "Fernkampfwerte anzeigen",
    ["RANGED_SETTINGS_DESC"] = "Zeigt/Versteckt alle Fernkampfwerte.",
    ["RANGED_ATTACK_POWER_SETTING"] = "Fernkampf Angriffskraft",
    ["RANGED_ATTACK_POWER_SETTING_DESC"] = "Zeigt/Versteckt den Fernkampf Angriffskraftwert.",
    ["RANGED_CRIT_SETTING"] = "Fernkampf Kritisch",
    ["RANGED_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance im Fernkampf kritisch zu treffen.",
    ["RANGED_HIT_SETTING"] = "Fernkampf Trefferwertung",
    ["RANGED_HIT_SETTING_DESC"] = "Zeigt/Versteckt alle Trefferwertungen im Fernkampf.",
    ["RANGED_HIT_VALUES_SETTING"] = "Fernkampf Trefferwertungen",
    ["RANGED_HIT_BONUS_SETTING_DESC"] = "Zeigt/Versteckt den Bonus auf die Fernkampf Trefferwertung.",
    ["RANGED_MISS_CHANCE_SETTING_DESC"] = "Zeigt/Versteckt die Chance einen Gegner des gleichen Levels im Fernkampf zu verfehlen.",
    ["RANGED_MISS_CHANCE_BOSS_SETTING_DESC"] = "Zeigt/Versteckt die Chance einen Gegner mit 3 Level über dem eigenen im Fernkampf zu verfehlen.",
    -- Defense Settings
    ["DEFENSE_SETTINGS"] = "Verteidigungswerte anzeigen",
    ["DEFENSE_SETTINGS_DESC"] = "Zeigt/Versteckt alle Verteidigungswerte.",
    ["ARMOR_SETTING"] = "Rüstung",
    ["ARMOR_SETTING_DESC"] = "Zeigt/Versteckt den Rüstungswert.",
    ["DEFENSE_VALUE_SETTING"] = "Verteidigungswertung",
    ["DEFENSE_VALUE_SETTING_DESC"] = "Zeigt/Versteckt die Verteidigunswertung.",
    ["BLOCK_CHANCE_SETTING"] = "Blockchance",
    ["BLOCK_CHANCE_SETTING_DESC"] = "Zeigt/Versteckt die Blockchance.",
    ["BLOCK_VALUE_SETTING"] = "Blockwertung",
    ["BLOCK_VALUE_SETTING_DESC"] = "Zeigt/Versteckt die Blockwertung.",
    ["PARRY_CHANCE_SETTING"] = "Parrierwertung",
    ["PARRY_CHANCE_SETTING_DESC"] = "Zeigt/Versteckt die Parrierwertung.",
    ["DODGE_CHANCE_SETTING"] = "Ausweichchance",
    ["DODGE_CHANCE_SETTING_DESC"] = "Zeigt/Versteckt die Ausweichchance.",
    -- Mana Settings
    ["MANA_SETTINGS"] = "Manawerte anzeigen",
    ["MANA_SETTINGS_DESC"] = "Zeigt/Versteckt alle Manawerte.",
    ["MP5_ITEMS_SETTING"] = "MP5 Gegenstände",
    ["MP5_ITEMS_SETTING_DESC"] = "Zeigt/Versteckt den MP5-Wert von Gegenständen.",
    ["MP5_SPIRIT_SETTING"] = "MP5 Willenskraft",
    ["MP5_SPIRIT_SETTING_DESC"] = "Zeigt/Versteckt den MP5-Wert durch Willenskraft.",
    ["MP5_CASTING_SETTING"] = "MP5 Zaubernd",
    ["MP5_CASTING_SETTING_DESC"] = "Zeigt/Versteckt den MP5-Wert während des Zauberwirkens.",
    -- Spell Settings
    ["SPELL_SETTINGS"] = "Zauberwerte anzeigen",
    ["SPELL_SETTINGS_DESC"] = "Zeigt/Versteckt alle Zauberwerte.",
    ["SPELL_CRIT_SETTING"] = "Zauber Kritisch",
    ["SPELL_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit einem Zauber kritisch zu treffen.",
    ["SPELL_HIT_SETTING"] = "Zauber Trefferwertung",
    ["SPELL_HIT_SETTING_DESC"] = "Zeigt/Versteckt alle Trefferwertungswertungen für Zauber.",
    ["SPELL_HIT_VALUES_SETTING"] = "Zauber Trefferwertungen",
    ["SPELL_HIT_BONUS_SETTING_DESC"] = "Zeigt/Versteckt den Bonus auf die Zauber Trefferwertung.",
    ["SPELL_MISS_CHANCE_SETTING_DESC"] = "Zeigt/Versteckt die Chance einen Gegner des gleichen Levels mit Zauber zu verfehlen.",
    ["SPELL_MISS_CHANCE_BOSS_SETTING_DESC"] = "Zeigt/Versteckt die Chance einen Gegner mit 3 Level über dem eigenen mit Zauber zu verfehlen.",
    -- Spell Power
    ["SPELL_POWER_SETTINGS"] = "Zaubermacht",
    ["SPELL_POWER_STATS_SETTINGS"] = "Zaubermachtwerte anzeigen",
    ["SPELL_POWER_STATS_SETTINGS_DESC"] = "Zeigt/Versteckt alle Zaubermachtwerte.",
    ["HEALING_POWER_SETTING"] = "Heilungsmacht",
    ["HEALING_POWER_SETTING_DESC"] = "Zeigt/Versteckt den Heilungsmachtwert.",
    ["ARCANE_DAMAGE_SETTING"] = "Arkanschaden",
    ["ARCANE_DAMAGE_SETTING_DESC"] = "Zeigt/Versteckt den Arkanschadenswert.",
    ["ARCANE_CRIT_SETTING"] = "Arkan Kritisch",
    ["ARCANE_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit Arkanzaubern kritisch zu treffen.",
    ["FIRE_DAMAGE_SETTING"] = "Feuerschaden",
    ["FIRE_DAMAGE_SETTING_DESC"] = "Zeigt/Versteckt den Feuerschadenswert.",
    ["FIRE_CRIT_SETTING"] = "Feuer Kritisch",
    ["FIRE_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit Feuerzaubern kritisch zu treffen.",
    ["FROST_DAMAGE_SETTING"] = "Frostschaden",
    ["FROST_DAMAGE_SETTING_DESC"] = "Zeigt/Versteckt den Frostschadenswert.",
    ["FROST_CRIT_SETTING"] = "Frost Kritisch",
    ["FROST_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit Frostzaubern kritisch zu treffen.",
    ["HOLY_DAMAGE_SETTING"] = "Heiligschaden",
    ["HOLY_DAMAGE_SETTING_DESC"] = "Zeigt/Versteckt den Heiligschadenswert.",
    ["HOLY_CRIT_SETTING"] = "Heilig Kritisch",
    ["HOLY_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit Heiligzaubern kritisch zu treffen.",
    ["NATURE_DAMAGE_SETTING"] = "Naturschaden",
    ["NATURE_DAMAGE_SETTING_DESC"] = "Zeigt/Versteckt den Naturschadenswert.",
    ["NATURE_CRIT_SETTING"] = "Natur Kritisch",
    ["NATURE_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit Naturzaubern kritisch zu treffen.",
    ["PHYSICAL_DAMAGE_SETTING"] = "Physischer Schaden",
    ["PHYSICAL_DAMAGE_SETTING_DESC"] = "Zeigt/Versteckt den physischen Schadenswert.",
    ["PHYSICAL_CRIT_SETTING"] = "Physisch Kritisch",
    ["PHYSICAL_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit physischen Zaubern kritisch zu treffen.",
    ["SHADOW_DAMAGE_SETTING"] = "Schattenschaden",
    ["SHADOW_DAMAGE_SETTING_DESC"] = "Zeigt/Versteckt den Schattenschadenswert.",
    ["SHADOW_CRIT_SETTING"] = "Schatten Kritisch",
    ["SHADOW_CRIT_SETTING_DESC"] = "Zeigt/Versteckt die Chance mit Schattenzaubern kritisch zu treffen.",

    -- Stats
    ["HIT"] = "Trefferchance",
    ["MISS"] = "Verfehlen: ",
    ["MISS_BOSS"] = "Verfehlen (Lvl + 3): ",
    ["BONUS"] = "Bonus: ",
    ["ATTACK_POWER"] = "Angriffskraft: ",
    ["CRIT_CHANCE"] = "Kritische Chance: ",

    ["MELEE"] = "Nahkampf",
    ["RANGED"] = "Fernkampf",
    ["DEFENSE"] = "Verteidigung",
    ["DEFENSE_VALUE"] = "Verteidigung: ",
    ["ARMOR"] = "Rüstung: ",
    ["MANA"] = "Mana",

    ["BLOCK_CHANCE"] = "Blockchance: ",
    ["BLOCK_VALUE"] = "Blockwertung: ",
    ["PARRY_CHANCE"] = "Parrierchance: ",
    ["DODGE_CHANCE"] = "Ausweichchance: ",

    ["MP5_ITEMS"] = "MP5 (Gegenstände): ",
    ["MP5_SPIRIT"] = "MP5 (Willenskraft): ",
    ["MP5_CASTING"] = "MP5 (Zaubernd): ",

    ["SPELL"] = "Zauber",

    ["SPELL_POWER"] = "Zauberkraft",
    ["HEALING_POWER"] = "Heilungskraft: ",
    ["ARCANCE_DMG"] = "Arkanschaden: ",
    ["ARCANCE_CRIT"] = "Arkan Kritisch: ",
    ["FIRE_DMG"] = "Feuerschaden: ",
    ["FIRE_CRIT"] = "Feuer Kritisch: ",
    ["FROST_DMG"] = "Frostschaden: ",
    ["FROST_CRIT"] = "Frost Kritisch: ",
    ["HOLY_DMG"] = "Heiligschaden: ",
    ["HOLY_CRIT"] = "Heilig Kritisch: ",
    ["NATURE_DMG"] = "Naturschaden: ",
    ["NATURE_CRIT"] = "Natur Kritisch: ",
    ["PHYSICAL_DMG"] = "Physischer Schaden: ",
    ["PHYSICAL_CRIT"] = "Physisch Kritisch: ",
    ["SHADOW_DMG"] = "Schattenschaden: ",
    ["SHADOW_CRIT"] = "Schatten Kritisch: ",
    
}
