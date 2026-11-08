print("MNK SCRIPT STARTED")
-- Mnk style ui
-- Standalone interface

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local gui = Instance.new("ScreenGui")
gui.Name = "NoctraUI"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(300, 250)
main.Position = UDim2.new(0.5, -150, 0.5, -125)
main.BackgroundColor3 = Color3.fromRGB(18, 19, 27)
main.BorderSizePixel = 0
main.Active = true
main.Parent = gui

Instance.new("UICorner", main).CornerRadius =
    UDim.new(0, 12)

local outline = Instance.new("UIStroke", main)
outline.Color = Color3.fromRGB(65, 110, 210)
outline.Thickness = 1.3

-- Header
local header = Instance.new("TextLabel")
header.Size = UDim2.new(1, -50, 0, 45)
header.Position = UDim2.fromOffset(15, 0)
header.BackgroundTransparency = 1
header.Text = "NOCTRA  |  UNIVERSAL"
header.TextColor3 = Color3.fromRGB(100, 160, 255)
header.Font = Enum.Font.GothamBold
header.TextSize = 15
header.TextXAlignment = Enum.TextXAlignment.Left
header.Parent = main

-- Minimize
local minimize = Instance.new("TextButton")
minimize.Size = UDim2.fromOffset(30, 30)
minimize.Position = UDim2.new(1, -40, 0, 7)
minimize.Text = "-"
minimize.TextSize = 20
minimize.TextColor3 = Color3.new(1,1,1)
minimize.BackgroundColor3 = Color3.fromRGB(40,45,60)
minimize.Parent = main

Instance.new("UICorner", minimize)

-- Dragging
local dragging = false
local dragStart, startPos

header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = main.Position
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- Minimize functionality
local minimized = false
minimize.MouseButton1Click:Connect(function()
    minimized = not minimized
    for _, obj in ipairs(main:GetChildren()) do
        if obj ~= header and obj ~= minimize
            and not obj:IsA("UICorner")
            and not obj:IsA("UIStroke") then
            obj.Visible = not minimized
        end
    end
    main.Size = minimized
        and UDim2.fromOffset(300, 45)
        or UDim2.fromOffset(300, 250)
    minimize.Text = minimized and "+" or "-"
end)

-- Toggle
local enabled = false

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(1, -30, 0, 38)
toggle.Position = UDim2.fromOffset(15, 55)
toggle.BackgroundColor3 = Color3.fromRGB(145, 55, 65)
toggle.Text = "AIM ASSIST  :  OFF"
toggle.TextColor3 = Color3.new(1,1,1)
toggle.Font = Enum.Font.GothamBold
toggle.TextSize = 12
toggle.Parent = main

Instance.new("UICorner", toggle).CornerRadius =
    UDim.new(0, 7)

toggle.MouseButton1Click:Connect(function()
    enabled = not enabled
    toggle.Text = enabled
        and "AIM ASSIST  :  ON"
        or "AIM ASSIST  :  OFF"

    toggle.BackgroundColor3 = enabled
        and Color3.fromRGB(45, 145, 95)
        or Color3.fromRGB(145, 55, 65)
end)

-- Slider function
local function createSlider(name, y, min, max, default)

    local value = default

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -30, 0, 25)
    label.Position = UDim2.fromOffset(15, y)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(220,220,230)
    label.Font = Enum.Font.Gotham
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = main

    local bar = Instance.new("TextButton")
    bar.Size = UDim2.new(1, -30, 0, 8)
    bar.Position = UDim2.fromOffset(15, y + 30)
    bar.BackgroundColor3 = Color3.fromRGB(48,50,65)
    bar.Text = ""
    bar.Parent = main

    Instance.new("UICorner", bar).CornerRadius =
        UDim.new(1, 0)

    local fill = Instance.new("Frame")
    fill.BackgroundColor3 = Color3.fromRGB(75,140,255)
    fill.Size = UDim2.fromScale(
        (default-min)/(max-min), 1
    )
    fill.Parent = bar

    Instance.new("UICorner", fill).CornerRadius =
        UDim.new(1, 0)

    local function update(x)
        local percent = math.clamp(
            (x - bar.AbsolutePosition.X) /
            bar.AbsoluteSize.X, 0, 1
        )

        value = math.floor(min + percent * (max-min))
        fill.Size = UDim2.fromScale(percent, 1)
        label.Text = name .. "  :  " .. value
    end

    label.Text = name .. "  :  " .. value

    bar.MouseButton1Down:Connect(function()
        update(UIS:GetMouseLocation().X)
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement
            and UIS:IsMouseButtonPressed(
                Enum.UserInputType.MouseButton1
            ) then
            update(UIS:GetMouseLocation().X)
        end
    end)

    return function()
        return value
    end
end

local getFOV = createSlider("FOV", 110, 50, 400, 150)
local getSmoothness = createSlider("SMOOTHNESS", 175, 1, 20, 8)

print("NOCTRA UI LOADED")
print("FOV:", getFOV())
print("Smoothness:", getSmoothness())
print("MNK SCRIPT FINISHED")
