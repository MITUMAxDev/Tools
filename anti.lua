-- a
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Function to check if text or name contains "trade"
local function containsTrade(str)
	if typeof(str) == "string" then
		return str:lower():find("trade") ~= nil
	end
	return false
end

-- Function to recursively hide matching GUIs
local function scanAndHide(gui)
	if gui:IsA("GuiObject") then
		if containsTrade(gui.Name) then
			gui.Visible = false
		elseif gui:FindFirstChild("Text") and containsTrade(gui.Text) then
			gui.Visible = false
		elseif gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox") then
			if containsTrade(gui.Text) then
				gui.Visible = false
			end
		end
	end

	-- Recurse through children
	for _, child in ipairs(gui:GetChildren()) do
		scanAndHide(child)
	end
end

-- Main loop
task.spawn(function()
	while true do
		pcall(function()
			for _, guiElement in ipairs(playerGui:GetChildren()) do
				scanAndHide(guiElement)
			end
		end)
		task.wait(0.5) -- Scans twice per second
	end
end)