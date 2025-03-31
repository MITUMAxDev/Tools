local job = game.JobId
local me = game:GetService("Players").LocalPlayer
local target = "ConCacbungno"
local goto = "866d8c4b-2b46-4e31-9c43-b3fa8ac50aea"

if job ~= goto and me.Name == target then
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goto, me)
end
