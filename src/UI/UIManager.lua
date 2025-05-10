-- =====================================================================================
--                                COMPONENT INFORMATION                                
-- =====================================================================================
-- This component is not related to Roblox Studio in terms of GUI features.
-- If in doubt, please send an email to hyggshidev@gmail.com for clarification.
-- 
-- Version: 1.0
-- Last Updated: 2025-05-10
-- Author: HyggshiOSDeveloper
-- =====================================================================================

-- UIManager.lua

local UIManager = {}
local screens = {
    MusicFrame = require(script.Screens.MusicFrame),
    Server = require(script.Screens.Server),
    TeleportPlayer = require(script.Screens.TeleportPlayer),
    PowerOff = require(script.Screens.PowerOff),
    MoveWindows = require(script.Screens.MoveWindows),
}

function UIManager:ShowScreen(screenName)
    for name, screen in pairs(screens) do
        if name == screenName then
            screen:Show()
        else
            screen:Hide()
        end
    end
end

return UIManager
