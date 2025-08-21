
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local _0cuovwut6 = function()
    local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Orion/main/source'))()
local Players = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local RunService = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local Workspace = workspace
local player = Players.LocalPlayer
local mouse = player:GetMouse()
local camera = Workspace.CurrentCamera
local UIS = game:GetService((function()
        local a={1142,1532,1350,1519,986,1467,1493,1558,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

local Key = (function()
        local a={1116,1324,1298,1129,1350,1298,1454,674,687,700};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
local ActiveKey = nil
local ActiveAimbot = false

local ESPEnabled, AimbotEnabled, TriggerbotEnabled, ShowFOV, AutoBackstab, WallbangEnabled, SpeedHackEnabled, NoRecoilEnabled, AutoHealEnabled, AutoLootEnabled = false, false, false, true, false, true, false, false, false, false
local Smoothness, Prediction, HitboxSize, FOV, BackstabAngle, SpeedMultiplier, HealThreshold, LootDistance, UpdateInterval = 0.5, 0.14, 2, 150, 90, 1.5, 25, 50, 3
local LockParts = {(function()
        local a={973,1350,1298,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),(function()
        local a={1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}
local ESPFolder = Instance.new((function()
        local a={947,1480,1441,1337,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Workspace)
ESPFolder.Name = (function()
        local a={934,1116,1077,947,1480,1441,1337,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
local ESPPool = {}
local ESPBoxes = {}
local StatsHUD = Instance.new((function()
        local a={1116,1324,1519,1350,1350,1467,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local LastUpdate = 0
local FrameCounter = 0

local function CreateHUD()
    StatsHUD.Name = (function()
        local a={1116,1324,1298,1129,1350,1298,1454,973,1142,921};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    StatsHUD.Parent = player:WaitForChild((function()
        local a={1077,1441,1298,1610,1350,1519,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    StatsHUD.ResetOnSpawn = false
    local mainFrame = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    mainFrame.Size = UDim2.new(0, 200, 0, 120)
    mainFrame.Position = UDim2.new(0, 10, 0, 10)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BackgroundTransparency = 0.7
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = StatsHUD
    for i,name in ipairs({(function()
        local a={1012,1402,1441,1441,1532,791,453,661};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),(function()
        local a={973,1350,1298,1337,1532,1389,1480,1545,1532,791,453,661};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),(function()
        local a={882,1324,1324,1558,1519,1298,1324,1610,791,453,661,518};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),(function()
        local a={947,1077,1116,791,453,661};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}) do
        local txt = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
        txt.Size = UDim2.new(1,0,0,20)
        txt.Position = UDim2.new(0,5,0,(i-1)*25+5)
        txt.BackgroundTransparency = 1
        txt.Text = name
        txt.TextColor3 = Color3.fromRGB(255,255,255)
        txt.TextXAlignment = Enum.TextXAlignment.Left
        txt.Parent = mainFrame
    end
end

local FOVCircle = Drawing.new((function()
        local a={908,1402,1519,1324,1441,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
FOVCircle.Thickness = 1
FOVCircle.Color = Color3.fromRGB(0,255,0)
FOVCircle.Filled = false
FOVCircle.Radius = FOV
FOVCircle.Position = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y/2)
FOVCircle.Visible = ShowFOV

local function VerifyKey(inputKey)
    if inputKey == Key then
        ActiveKey = Key
        OrionLib:MakeNotification({Name=(function()
        local a={1012,1350,1610,453,882,1324,1324,1350,1493,1545,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Content=(function()
        local a={882,1324,1324,1350,1532,1532,453,1376,1519,1298,1467,1545,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Image=(function()
        local a={1519,1311,1597,1298,1532,1532,1350,1545,1402,1337,791,648,648,739,661,700,674,661,778,713,739,752,700};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Time=5})
        return true
    else
        OrionLib:MakeNotification({Name=(function()
        local a={1012,1350,1610,453,921,1350,1467,1402,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Content=(function()
        local a={986,1467,1571,1298,1441,1402,1337,453,1428,1350,1610};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Image=(function()
        local a={1519,1311,1597,1298,1532,1532,1350,1545,1402,1337,791,648,648,739,661,700,674,661,778,713,739,752,700};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Time=5})
        return false
    end
end

local function GetESPBox()
    if #ESPPool > 0 then
        return table.remove(ESPPool)
    else
        local box = Drawing.new((function()
        local a={1116,1506,1558,1298,1519,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
        box.Thickness = 2
        box.Filled = false
        return box
    end
end

local function UpdateESP()
    if not ESPEnabled then return end
    if tick() - LastUpdate < UpdateInterval then return end
    LastUpdate = tick()
    local playerRoot = player.Character and player.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if not playerRoot then return end
    for _,box in pairs(ESPBoxes) do
        box.Visible = false
        table.insert(ESPPool, box)
    end
    ESPBoxes = {}
    for _,p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team and p.Character and p.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
            local rootPart = p.Character.HumanoidRootPart
            local distance = (rootPart.Position - playerRoot.Position).Magnitude
            if distance > 150 then continue end
            local hum = p.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            local healthPct = hum and hum.Health / hum.MaxHealth or 1
            local color = Color3.fromHSV(healthPct * 0.3, 1, 1)
            local box = GetESPBox()
            box.Color = color
            box.Visible = true
            table.insert(ESPBoxes, box)
        end
    end
end

local function GetTargets()
    local targets = {}
    local playerRoot = player.Character and player.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if not playerRoot then return targets end
    for _,p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team and p.Character and p.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
            for _,partName in pairs(LockParts) do
                local part = p.Character:FindFirstChild(partName)
                if part then
                    local predictedPos = part.Position + part.Velocity * Prediction
                    table.insert(targets,{Part=part,Position=predictedPos,Player=p})
                end
            end
        end
    end
    return targets
end

local function ApplySpeedHack()
    if not SpeedHackEnabled or not player.Character then return end
    local humanoid = player.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if humanoid then
        humanoid.WalkSpeed = 16 * SpeedMultiplier
        humanoid.JumpPower = 50 * SpeedMultiplier
    end
end

local function ApplyNoRecoil()
    if not NoRecoilEnabled then return end
    local function ZeroTool(tool)
        for _,v in pairs(tool:GetDescendants()) do
            if v:IsA((function()
        local a={1051,1558,1454,1311,1350,1519,1155,1298,1441,1558,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) and (v.Name:find((function()
        local a={1103,1350,1324,1480,1402,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or v.Name:find((function()
        local a={1116,1493,1519,1350,1298,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())) then
                v.Value = 0
            end
        end
    end
    for _,tool in pairs(player.Backpack:GetChildren()) do if tool:IsA((function()
        local a={1129,1480,1480,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then ZeroTool(tool) end end
    local charTool = player.Character and player.Character:FindFirstChildOfClass((function()
        local a={1129,1480,1480,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if charTool then ZeroTool(charTool) end
end

local function AutoHeal()
    if not AutoHealEnabled or not player.Character then return end
    local humanoid = player.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if humanoid and humanoid.Health < HealThreshold then humanoid.Health = humanoid.MaxHealth end
end

local function AutoLoot()
    if not AutoLootEnabled or not player.Character then return end
    local playerRoot = player.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if not playerRoot then return end
    for _,item in pairs(Workspace:GetChildren()) do
        if item:IsA((function()
        local a={895,1298,1532,1350,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) and (item.Name:find((function()
        local a={882,1454,1454,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or item.Name:find((function()
        local a={973,1350,1298,1441,1545,1389};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) or item.Name:find((function()
        local a={1025,1480,1480,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())) then
            local distance = (item.Position - playerRoot.Position).Magnitude
            if distance <= LootDistance then
                firetouchinterest(playerRoot, item, 0)
                firetouchinterest(playerRoot, item, 1)
            end
        end
    end
end

local function InfiniteAmmo()
    local function SetTool(tool)
        if tool:FindFirstChild((function()
        local a={882,1454,1454,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then tool.Ammo.Value = math.huge end
        if tool:FindFirstChild((function()
        local a={1103,1350,1441,1480,1298,1337,1129,1402,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then tool.ReloadTime.Value = 0 end
        if tool:FindFirstChild((function()
        local a={947,1402,1519,1350,1103,1298,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then tool.FireRate.Value = 0.01 end
        for _,v in pairs(tool:GetDescendants()) do
            if v:IsA((function()
        local a={1051,1558,1454,1311,1350,1519,1155,1298,1441,1558,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) and (v.Name==(function()
        local a={882,1454,1454,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() or v.Name==(function()
        local a={1103,1350,1441,1480,1298,1337,1129,1402,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() or v.Name==(function()
        local a={947,1402,1519,1350,1103,1298,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
                v.Value=(v.Name==(function()
        local a={882,1454,1454,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) and math.huge or 0.01
            end
        end
    end
    for _,tool in pairs(player.Backpack:GetChildren()) do if tool:IsA((function()
        local a={1129,1480,1480,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then SetTool(tool) end end
    local charTool = player.Character and player.Character:FindFirstChildOfClass((function()
        local a={1129,1480,1480,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if charTool then SetTool(charTool) end
end

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        ActiveAimbot = not ActiveAimbot
    end
end)

RunService.RenderStepped:Connect(function()
    FrameCounter = FrameCounter + 1
    if FrameCounter % 5 == 0 then
        FOVCircle.Position = Vector2.new(camera.ViewportSize.X/2,camera.ViewportSize.Y/2)
        FOVCircle.Visible = ShowFOV
        FOVCircle.Radius = FOV
    end
    if FrameCounter % 10 == 0 then
        UpdateESP()
        ApplySpeedHack()
        ApplyNoRecoil()
        AutoHeal()
        AutoLoot()
        InfiniteAmmo()
    end
    if FrameCounter % 2 == 0 and ActiveAimbot then
        local targets = GetTargets()
        local closestTarget,minDist = nil,math.huge
        for _,t in pairs(targets) do
            local screenPos,onScreen = camera:WorldToViewportPoint(t.Position)
            local dist = (Vector2.new(screenPos.X,screenPos.Y)-Vector2.new(camera.ViewportSize.X/2,camera.ViewportSize.Y/2)).Magnitude
            if dist <= FOV and dist < minDist then
                minDist = dist
                closestTarget = t
            end
        end
        if closestTarget then
            if AimbotEnabled then
                local adaptiveSmoothness = Smoothness*(1+minDist/100)
                camera.CFrame = camera.CFrame:Lerp(CFrame.new(camera.CFrame.Position,closestTarget.Position),adaptiveSmoothness)
            end
            if TriggerbotEnabled then
                mouse1press()
                task.wait(0.02)
                mouse1release()
            end
        end
    end
end)

local Window
local function InitPanel()
    Window = OrionLib:MakeWindow({Name=(function()
        local a={1116,1324,1298,1129,1350,1298,1454,453,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), HidePremium=true, SaveConfig=true, ConfigFolder=(function()
        local a={1116,1324,1298,1129,1350,1298,1454,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()})
    local CombatTab = Window:MakeTab({Name=(function()
        local a={908,1480,1454,1311,1298,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Icon=(function()
        local a={1519,1311,1597,1298,1532,1532,1350,1545,1402,1337,791,648,648,739,661,700,674,661,778,713,739,752,700};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), PremiumOnly=false})
    CombatTab:AddToggle({Name=(function()
        local a={934,1116,1077};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=false, Callback=function(v) ESPEnabled=v end})
    CombatTab:AddToggle({Name=(function()
        local a={882,1402,1454,1311,1480,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=false, Callback=function(v) AimbotEnabled=v end})
    CombatTab:AddToggle({Name=(function()
        local a={1129,1519,1402,1376,1376,1350,1519,1311,1480,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=false, Callback=function(v) TriggerbotEnabled=v end})
    CombatTab:AddToggle({Name=(function()
        local a={882,1558,1545,1480,453,895,1298,1324,1428,1532,1545,1298,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=false, Callback=function(v) AutoBackstab=v end})
    CombatTab:AddToggle({Name=(function()
        local a={1116,1389,1480,1584,453,947,1064,1155};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=true, Callback=function(v) ShowFOV=v end})
    CombatTab:AddToggle({Name=(function()
        local a={1168,1298,1441,1441,1311,1298,1467,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=true, Callback=function(v) WallbangEnabled=v end})
    CombatTab:AddToggle({Name=(function()
        local a={1051,1480,453,1103,1350,1324,1480,1402,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=false, Callback=function(v) NoRecoilEnabled=v end})
    CombatTab:AddSlider({Name=(function()
        local a={1116,1454,1480,1480,1545,1389,1467,1350,1532,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Min=0, Max=1, Default=0.5, Increment=0.01, Callback=function(v) Smoothness=v end})
    CombatTab:AddSlider({Name=(function()
        local a={1077,1519,1350,1337,1402,1324,1545,1402,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Min=0, Max=0.5, Default=0.14, Increment=0.01, Callback=function(v) Prediction=v end})
    CombatTab:AddSlider({Name=(function()
        local a={947,1064,1155,453,1116,1402,1623,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Min=50, Max=500, Default=150, Callback=function(v) FOV=v end})
    CombatTab:AddSlider({Name=(function()
        local a={973,1402,1545,1311,1480,1597,453,1116,1402,1623,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Min=1, Max=10, Default=2, Callback=function(v) HitboxSize=v end})
    CombatTab:AddSlider({Name=(function()
        local a={895,1298,1324,1428,1532,1545,1298,1311,453,882,1467,1376,1441,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Min=45, Max=180, Default=90, Callback=function(v) BackstabAngle=v end})
    CombatTab:AddDropdown({Name=(function()
        local a={1025,1480,1324,1428,453,1077,1298,1519,1545,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default=(function()
        local a={973,1350,1298,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Options={(function()
        local a={973,1350,1298,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),(function()
        local a={1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),(function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}, Callback=function(v) LockParts={v} end})
    CreateHUD()
    OrionLib:Init()
end

local KeyTab = OrionLib:MakeWindow({Name=(function()
        local a={1012,1350,1610,453,882,1324,1324,1350,1532,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), HidePremium=true, SaveConfig=false, ConfigFolder=(function()
        local a={1116,1324,1298,1129,1350,1298,1454,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()})
KeyTab:MakeTab({Name=(function()
        local a={882,1324,1324,1350,1532,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Icon=(function()
        local a={1519,1311,1597,1298,1532,1532,1350,1545,1402,1337,791,648,648,739,661,700,674,661,778,713,739,752,700};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), PremiumOnly=false}):AddTextbox({Name=(function()
        local a={934,1467,1545,1350,1519,453,1012,1350,1610};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Default="", TextDisappear=true, Callback=function(v)
    if VerifyKey(v) then InitPanel() end
end})
OrionLib:Init()
end;
_0cuovwut6();
