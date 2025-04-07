pcall(function()
    local Players = game:GetService("Players")
    local TeleportService = game:GetService("TeleportService")
    local player = Players.LocalPlayer

    if player.Name == "wuasaaaaaaspap" and game.JobId ~= "3d7968d1-3f3d-4b67-ab38-73c1bfe2456b" then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, "3d7968d1-3f3d-4b67-ab38-73c1bfe2456b", player)
    end
end)
