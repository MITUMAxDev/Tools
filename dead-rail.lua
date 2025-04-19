-- hehe
pcall(function()
  if not _G.SentLool and game:GetService("Players").LocalPlayer.Name == "RO8900074" then
  local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
  WindUI:Popup({
    Title = "ข้อความจากผู้พัฒนาสคริปต์",
    Icon = "info", -- lucide or url or rbxassetid
    Content = "กดติดตามกันก่อนครับ เดี๋ยวให้สคริปต์\n- mituma",
    Buttons = {
        {
            Title = "ปิดข้อความ",
            Icon = "arrow-right", -- lucide
            Callback = function() end,
            Variant = "Primary", -- Primary, Secondary, Tertiary
        }
    }
})
  _G.SentLool = true
end
end)
