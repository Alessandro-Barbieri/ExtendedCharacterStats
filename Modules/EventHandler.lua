---@class EventHandler
local EventHandler = ECSLoader:CreateModule("EventHandler")

---@type Stats
local Stats = ECSLoader:ImportModule("Stats")
---@type GearInfos
local GearInfos = ECSLoader:ImportModule("GearInfos")

function DelayedUpdateInformation()
    local statsFrame = Stats:GetFrame()
    statsFrame:SetScript("OnUpdate",nil)
    -- update next frame
    C_Timer.After(0, function ()
        Stats.UpdateInformation()
    end)
end

function DelayedUpdateGearColorFrames()
    PaperDollFrame:SetScript("OnUpdate",nil)
    -- update next frame
    C_Timer.After(0, function ()
        GearInfos.UpdateGearColorFrames()
    end)
end

function DelayedUpdateInspectGearColorFrames()
    InspectPaperDollFrame:SetScript("OnUpdate",nil)
    -- update next frame
    C_Timer.After(0, function ()
        GearInfos.UpdateInspectGearColorFrames()
    end)
end

---Event handler for all the events subscribed to in _Init.RegisterEvents
function EventHandler.HandleOnEvent(_, event, ...)
    local args = {...}

    if event == "PLAYER_ENTERING_WORLD" then
        return
    end

    local statsFrame = Stats:GetFrame()

    if statsFrame:IsVisible() then
        if event == "ACTIVE_TALENT_GROUP_CHANGED" or
            event == "CHARACTER_POINTS_CHANGED" or
            event == "COMBAT_RATING_UPDATE" or
            event == "PLAYER_DAMAGE_DONE_MODS" or
            event == "PLAYER_LEVEL_UP" or
            event == "PLAYER_MOUNT_DISPLAY_CHANGED" or
            event == "PLAYER_TALENT_UPDATE" or
            event == "RUNE_UPDATED" or
            event == "SKILL_LINES_CHANGED" or
            event == "SPELL_POWER_CHANGED" or
            event == "UPDATE_SHAPESHIFT_FORM" or ((
                event == "UNIT_ATTACK" or
                event == "UNIT_ATTACK_SPEED" or
                event == "UNIT_AURA" or
                event == "UNIT_DAMAGE" or
                event == "UNIT_SPELL_HASTE" or
                event == "UNIT_STATS" or
                event == "UNIT_RANGEDDAMAGE" or
                event == "UNIT_RANGED_ATTACK_POWER"
            ) and args[1] == "player") then
            statsFrame:SetScript("OnUpdate", DelayedUpdateInformation)
        elseif event == "PLAYER_EQUIPMENT_CHANGED" or event == "SOCKET_INFO_SUCCESS" then
            PaperDollFrame:SetScript("OnUpdate", DelayedUpdateGearColorFrames)
            statsFrame:SetScript("OnUpdate", DelayedUpdateInformation)
        end
    end
    if event == "INSPECT_READY" and args[1] == UnitGUID("target") then
        InspectPaperDollFrame:SetScript("OnUpdate", DelayedUpdateInspectGearColorFrames)
    end
end

