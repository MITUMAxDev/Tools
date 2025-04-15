--[[
  ผู้เล่นชื่อ Notus0_0 จะเห็น Popup UI หนึ่งครั้ง
  ใช้ WindUI จาก Tree-Hub API
--]]

pcall(function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    if _G.SentLool or LocalPlayer.Name ~= "Notus0_0" then return end

    local success, WindUILib = pcall(function()
        return loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
    end)

    if not success or not WindUILib then return end

    WindUILib:Popup({
        Title = "ข้อความจากผู้พัฒนาสคริปต์",
        Icon = "info",
        Content = "ถูกต้อง จ่ายเงินพี่เขาด้วย\n- mituma",
        Buttons = {
            {
                Title = "ปิดข้อความ",
                Icon = "arrow-right",
                Callback = function() end,
                Variant = "Primary",
            }
        }
    })

    _G.SentLool = true
end)
