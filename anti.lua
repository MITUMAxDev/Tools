local target = "TRDK_X55"
local servertg = "8209cd4a-f2e5-4697-804c-3349342af9dd"
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local plr = Players.LocalPlayer

if plr.Name == target then
    if game.JobId ~= servertg then
        local success, errorMessage = pcall(function()
            TeleportService:TeleportToPlaceInstance(game.PlaceId, servertg, plr)
        end)
        if not success then
            warn("Teleport failed: " .. errorMessage)
            -- Optionally notify the player (e.g., via a UI message)
            print("Failed to join the target server. Please try again later.")
        end
    else
        print("Already in the target server!")
    end
else
    print("This script is only for " .. target)
end
