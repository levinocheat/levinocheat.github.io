local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Levinorbx/Levino-Cheat/refs/heads/main/Levino-Menu.lua"))()


local Window = Library:CreateWindow("Levino Cheat")

Window:CreateTabs({"Legit", "Rage", "Visual", "World", "Settings"})

local WatermarkControls = Window:SetupWatermark("Levino Cheat")


local LeftCol1, RightCol1 = Window:CreateColumnContainer(Window:GetTab(1))
local Sec1T1 = Window:CreateSection("Legit Aimbot", LeftCol1)
local Sec2T1 = Window:CreateSection("Triggerbot", RightCol1)

Sec1T1:BindToggle("Enable Legit", false, function(v) end)
Sec1T1:Slider("Smoothness", 1, 50, 5, function(v) end)
Sec1T1:Slider("FOV", 10, 500, 100, function(v) end)
Sec1T1:Dropdown("Hit Part", {"Head", "Torso", "Random"}, "Head", function(v) end)
Sec1T1:Toggle("Visible Check", true, function(v) end)
Sec1T1:Toggle("Team Check", true, function(v) end)

Sec2T1:BindToggle("Enable Triggerbot", false, function(v) end)
Sec2T1:Slider("Delay", 0, 500, 50, function(v) end)
Sec2T1:Toggle("Auto Shoot", false, function(v) end)


local LeftCol2, RightCol2 = Window:CreateColumnContainer(Window:GetTab(2))
local Sec1T2 = Window:CreateSection("Rage Aimbot", LeftCol2)
local Sec2T2 = Window:CreateSection("Target Strafe", RightCol2)

Sec1T2:BindToggle("Enable Silent Aim", false, function(v) end)
Sec1T2:Slider("Hit Chance", 1, 100, 100, function(v) end)
Sec1T2:Dropdown("Hit Part", {"Head", "Torso", "Closest"}, "Head", function(v) end)
Sec1T2:Toggle("Auto Shoot", false, function(v) end)
Sec1T2:Toggle("Ignore Walls", false, function(v) end)
Sec1T2:Slider("Max Distance", 100, 5000, 1000, function(v) end)

Sec2T2:BindToggle("Enable Strafe", false, function(v) end)
Sec2T2:Slider("Strafe Speed", 1, 10, 5, function(v) end)
Sec2T2:Slider("Strafe Distance", 5, 50, 15, function(v) end)


local LeftCol3, RightCol3 = Window:CreateColumnContainer(Window:GetTab(3))
local Sec1T3 = Window:CreateSection("ESP", LeftCol3)
local Sec2T3 = Window:CreateSection("Chams", RightCol3)

Sec1T3:BindToggle("Enable ESP", false, function(v) end)
Sec1T3:Toggle("Show Name", false, function(v) end)
Sec1T3:Toggle("Show Box", true, function(v) end)
Sec1T3:Toggle("Show Distance", false, function(v) end)
Sec1T3:Toggle("Show Health", true, function(v) end)
Sec1T3:Slider("Text Size", 10, 20, 14, function(v) end)
Sec1T3:Slider("Max Distance", 100, 5000, 2000, function(v) end)

Sec2T3:BindToggle("Enable Chams", false, function(v) end)
Sec2T3:Toggle("Visible Only", false, function(v) end)
Sec2T3:Slider("Transparency", 0, 100, 50, function(v) end)


local LeftCol4, RightCol4 = Window:CreateColumnContainer(Window:GetTab(4))
local Sec1T4 = Window:CreateSection("Movement", LeftCol4)
local Sec2T4 = Window:CreateSection("Player", RightCol4)

Sec1T4:BindToggle("Walk Speed", false, function(v) end)
Sec1T4:Slider("Speed", 16, 100, 30, function(v) end)
Sec1T4:BindToggle("Jump Power", false, function(v) end)
Sec1T4:Slider("Jump", 50, 500, 100, function(v) end)
Sec1T4:BindToggle("Fly", false, function(v) end)
Sec1T4:Slider("Fly Speed", 10, 200, 50, function(v) end)

Sec2T4:BindToggle("No Clip", false, function(v) end)
Sec2T4:BindToggle("Infinite Jump", false, function(v) end)
Sec2T4:Toggle("Anti AFK", false, function(v) end)
Sec2T4:Button("Reset Character", function() end)


local LeftCol5, RightCol5 = Window:CreateColumnContainer(Window:GetTab(5))
local Sec1T5 = Window:CreateSection("Settings", LeftCol5)
local Sec2T5 = Window:CreateSection("Watermark", RightCol5)
local Sec3T5 = Window:CreateSection("Config", RightCol5)

Sec1T5:Toggle("FPS Unlock", false, function(v) end)
Sec1T5:Slider("FPS Cap", 60, 480, 120, function(v) end)
Sec1T5:Toggle("Stream Proof", false, function(v) end)
Sec1T5:Button("Rejoin", function() end)
Sec1T5:Button("Server Hop", function() end)

Sec2T5:Toggle("Enable Watermark", true, function(v) WatermarkControls.SetShowWatermark(v) end)
Sec2T5:Toggle("Show FPS", true, function(v) WatermarkControls.SetShowFPS(v) end)
Sec2T5:Toggle("Show Ping", true, function(v) WatermarkControls.SetShowPing(v) end)
Sec2T5:Toggle("Show Time", true, function(v) WatermarkControls.SetShowTime(v) end)

Sec3T5:Textbox("Config Name", "default", function(v) end)
Sec3T5:Button("Save Config", function() end)
Sec3T5:Button("Load Config", function() end)
Sec3T5:Button("Delete Config", function() end)
