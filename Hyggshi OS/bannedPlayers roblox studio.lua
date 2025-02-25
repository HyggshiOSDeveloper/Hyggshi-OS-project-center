-- This script uses normal script. This code contains need to be placed in Script service server.
local bannedPlayers = {
    ["PlayerName1"] = "Reason for kick: Violation of rule 1.",
    ["PlayerName2"] = "Reason for kick: Violation of rule 2.",
    ["PlayerName3"] = "Reason for kick: Violation of rule 3."
}  -- Table containing player names and corresponding messages

game.Players.PlayerAdded:Connect(function(player)
    -- Check if the player is on the kicked list
    if bannedPlayers[player.Name] then
        -- Kick players and send separate messages
        player:Kick(bannedPlayers[player.Name])
    end
end)
