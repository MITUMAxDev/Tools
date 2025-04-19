-- hehe
pcall(function()
  if not _G.SentLol and game:GetService("Players").LocalPlayer.Name == "RO8900074" then
  local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
  WindUI:Popup({
    Title = "ข้อความจากผู้พัฒนาสคริปต์",
    Icon = "info", -- lucide or url or rbxassetid
    Content = "ดูไลฟ์อยู่นะครับ สู้ๆครับ 1000 ซัพไวๆ\n- mituma",
    Buttons = {
        {
            Title = "ปิดข้อความ",
            Icon = "arrow-right", -- lucide
            Callback = function() end,
            Variant = "Primary", -- Primary, Secondary, Tertiary
        }
    }
})
  _G.SentLol = true
end
end)
