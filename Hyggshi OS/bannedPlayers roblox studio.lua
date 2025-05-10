-- =====================================================================================
--                                COMPONENT INFORMATION                                
-- =====================================================================================
-- Script Name: bannedPlayers.lua
-- Purpose    : Kicks players from the game if they are listed in the bannedPlayers table.
-- Script Type: Server Script (must be placed in ServerScriptService)
-- Author     : HyggshiOSDeveloper
-- Email      : hyggshidev@gmail.com
-- Version    : 1.0
-- Last Updated: 2025-05-10
-- =====================================================================================

-- Table containing player names and corresponding messages
local bannedPlayers = {
    ["PlayerName1"] = "Reason for kick: Violation of rule 1.",
    ["PlayerName2"] = "Reason for kick: Violation of rule 2.",
    ["PlayerName3"] = "Reason for kick: Violation of rule 3."
}

-- Connect to PlayerAdded event
game.Players.PlayerAdded:Connect(function(player)
    -- Check if the player is in the banned list
    if bannedPlayers[player.Name] then
        -- Kick player and provide reason
        player:Kick(bannedPlayers[player.Name])
    end
end)
