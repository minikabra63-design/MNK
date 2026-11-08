
--// MNK HUB V3 - LIGHT BLUE EDITION
--// Roblox Studio LocalScript

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local BLUE = Color3.fromRGB(75, 180, 255)
local DARK = Color3.fromRGB(15, 24, 40)
local PANEL = Color3.fromRGB(23, 38, 59)
local WHITE = Color3.fromRGB(240, 248, 255)

local old = playerGui:FindFirstChild("MNK_HUB")
if old then old:Destroy() end

local gui = Instance.new("ScreenGui")
gui.Name = "MNK_HUB"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(430, 390)
main.Position = UDim2.new(0.5, -215, 0.5, -195)
main.BackgroundColor3 = DARK
main.BorderSizePixel = 0
main.Active = true
main.Parent = gui

Instance.new("UICorner", main).CornerRadius =
    UDim.new(0, 14)

local stroke = Instance.new("UIStroke", main)
stroke.Color = BLUE
stroke.Thickness = 1.5

local function create(class, props, parent)
    local obj = Instance.new(class)
    for k, v in pairs(props) do
        obj[k] = v
    end
    obj.Parent = parent
    return obj
end

-- HEADER

local header = create("Frame", {
    Size = UDim2.new(1, 0, 0, 65),
    BackgroundColor3 = PANEL,
    BorderSizePixel = 0
}, main)

Instance.new("UICorner", header).CornerRadius =
    UDim.new(0, 14)

local logo = create("TextLabel", {
    Size = UDim2.fromOffset(42, 42),
    Position = UDim2.fromOffset(12, 10),
    BackgroundColor3 = BLUE,
    Text = "M",
    TextColor3 = WHITE,
    Font = Enum.Font.GothamBlack,
    TextSize = 26
}, header)

Instance.new("UICorner", logo).CornerRadius =
    UDim.new(0, 10)

create("TextLabel", {
    Size = UDim2.fromOffset(230, 28),
    Position = UDim2.fromOffset(65, 9),
    BackgroundTransparency = 1,
    Text = "MNK HUB",
    TextColor3 = BLUE,
    Font = Enum.Font.GothamBlack,
    TextSize = 21,
    TextXAlignment = Enum.TextXAlignment.Left
}, header)

create("TextLabel", {
    Size = UDim2.fromOffset(230, 18),
    Position = UDim2.fromOffset(66, 35),
    BackgroundTransparency = 1,
    Text = "LIGHT BLUE EDITION V3",
    TextColor3 = WHITE,
    Font = Enum.Font.Gotham,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
}, header)

local close = create("TextButton", {
    Size = UDim2.fromOffset(32, 32),
    Position = UDim2.new(1, -43, 0, 15),
    BackgroundColor3 = Color3.fromRGB(180, 65, 80),
    Text = "X",
    TextColor3 = WHITE,
    Font = Enum.Font.GothamBold,
    TextSize = 15
}, header)

Instance.new("UICorner", close).CornerRadius =
    UDim.new(0, 8)

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- DRAGGING

local dragging = false
local dragStart
local startPosition

header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPosition = main.Position
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then
        local delta = input.Position - dragStart
        main.Position = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

-- CONTENT

local content = create("Frame", {
    Size = UDim2.new(1, -125, 1, -80),
    Position = UDim2.fromOffset(115, 72),
    BackgroundTransparency = 1
}, main)

local sidebar = create("Frame", {
    Size = UDim2.new(0, 100, 1, -80),
    Position = UDim2.fromOffset(10, 72),
    BackgroundColor3 = PANEL,
    BorderSizePixel = 0
}, main)

Instance.new("UICorner", sidebar).CornerRadius =
    UDim.new(0, 10)

local pages = {}

local function createPage(name)
    local page = create("ScrollingFrame", {
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = BLUE,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        Visible = false
    }, content)

    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 9)
    layout.Parent = page

    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        page.CanvasSize = UDim2.new(
            0, 0, 0, layout.AbsoluteContentSize.Y + 10
        )
    end)

    pages[name] = page
    return page
end

local function title(parent, text)
    create("TextLabel", {
        Size = UDim2.new(1, -10, 0, 30),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = BLUE,
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        TextXAlignment = Enum.TextXAlignment.Left
    }, parent)
end

local function button(parent, text, callback)
    local b = create("TextButton", {
        Size = UDim2.new(1, -8, 0, 38),
        BackgroundColor3 = PANEL,
        Text = text,
        TextColor3 = WHITE,
        Font = Enum.Font.GothamMedium,
        TextSize = 12,
        AutoButtonColor = false
    }, parent)

    Instance.new("UICorner", b).CornerRadius =
        UDim.new(0, 8)

    b.MouseEnter:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(38, 65, 95)
        }):Play()
    end)

    b.MouseLeave:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.15), {
            BackgroundColor3 = PANEL
        }):Play()
    end)

    b.MouseButton1Click:Connect(callback)
    return b
end

local function toggle(parent, name, default, callback)
    local state = default

    local b = button(parent, name .. " : " ..
        (state and "ON" or "OFF"), function()
        state = not state
        b.Text = name .. " : " ..
            (state and "ON" or "OFF")
        b.BackgroundColor3 = state and
            Color3.fromRGB(35, 105, 145) or PANEL

        callback(state)
    end)

    return function()
        return state
    end
end

local function slider(parent, name, min, max, default, callback)
    local value = default

    local holder = create("Frame", {
        Size = UDim2.new(1, -8, 0, 58),
        BackgroundColor3 = PANEL,
        BorderSizePixel = 0
    }, parent)

    Instance.new("UICorner", holder).CornerRadius =
        UDim.new(0, 8)

    local label = create("TextLabel", {
        Size = UDim2.new(1, -15, 0, 25),
        Position = UDim2.fromOffset(10, 3),
        BackgroundTransparency = 1,
        Text = name .. " : " .. value,
        TextColor3 = WHITE,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left
    }, holder)

    local bar = create("TextButton", {
        Size = UDim2.new(1, -20, 0, 7),
        Position = UDim2.fromOffset(10, 38),
        BackgroundColor3 = Color3.fromRGB(50, 68, 90),
        Text = "",
        AutoButtonColor = false
    }, holder)

    Instance.new("UICorner", bar).CornerRadius =
        UDim.new(1, 0)

    local fill = create("Frame", {
        Size = UDim2.fromScale(
            (value - min) / (max - min), 1),
        BackgroundColor3 = BLUE,
        BorderSizePixel = 0
    }, bar)

    Instance.new("UICorner", fill).CornerRadius =
        UDim.new(1, 0)

    local function update(x)
        local percent = math.clamp(
            (x - bar.AbsolutePosition.X) /
            bar.AbsoluteSize.X, 0, 1
        )

        value = math.floor(min + percent * (max - min))
        fill.Size = UDim2.fromScale(percent, 1)
        label.Text = name .. " : " .. value
        callback(value)
    end

    bar.MouseButton1Down:Connect(function()
        update(UIS:GetMouseLocation().X)
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement
            and UIS:IsMouseButtonPressed(
                Enum.UserInputType.MouseButton1
            ) then
            if bar.Parent then
                update(UIS:GetMouseLocation().X)
            end
        end
    end)

    return function()
        return value
    end
end

-- HOME PAGE

local home = createPage("Home")
title(home, "Welcome to MNK HUB")

create("TextLabel", {
    Size = UDim2.new(1, -8, 0, 55),
    BackgroundColor3 = PANEL,
    Text = "Welcome, " .. player.DisplayName ..
        "! Enjoy your MNK experience.",
    TextColor3 = WHITE,
    Font = Enum.Font.Gotham,
    TextSize = 12,
    TextWrapped = true
}, home)

title(home, "PLAYER INFORMATION")

local info = create("TextLabel", {
    Size = UDim2.new(1, -8, 0, 55),
    BackgroundColor3 = PANEL,
    Text = "Username: " .. player.Name ..
        "\nUser ID: " .. player.UserId,
    TextColor3 = WHITE,
    Font = Enum.Font.Gotham,
    TextSize = 12,
    TextWrapped = true
}, home)

-- SETTINGS PAGE

local settings = createPage("Settings")
title(settings, "Interface Settings")

local minimized = false

toggle(settings, "Animations", true, function(state)
    print("Animations:", state)
end)

toggle(settings, "Show UI Stroke", true, function(state)
    stroke.Enabled = state
end)

slider(settings, "UI Transparency", 0, 80, 0, function(value)
    main.BackgroundTransparency = value / 100
end)

button(settings, "RESET INTERFACE", function()
    main.BackgroundTransparency = 0
    stroke.Enabled = true
end)

-- PLAYER PAGE

local playerPage = createPage("Player")
title(playerPage, "Player Settings")

slider(playerPage, "WalkSpeed", 8, 32, 16, function(value)
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = value
    end
end)

slider(playerPage, "Jump Power", 20, 100, 50, function(value)
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.UseJumpPower = true
        humanoid.JumpPower = value
    end
end)

slider(playerPage, "Camera FOV", 50, 120, 70, function(value)
    workspace.CurrentCamera.FieldOfView = value
end)

button(playerPage, "RESET MOVEMENT", function()
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = 16
        humanoid.UseJumpPower = true
        humanoid.JumpPower = 50
    end
end)

-- ABOUT PAGE

local about = createPage("About")
title(about, "About MNK HUB")

create("TextLabel", {
    Size = UDim2.new(1, -8, 0, 100),
    BackgroundColor3 = PANEL,
    Text = "MNK HUB V3\nLight Blue Edition\n\nDesigned for Roblox Studio.\nCreated with Lua.",
    TextColor3 = WHITE,
    Font = Enum.Font.Gotham,
    TextSize = 13,
    TextWrapped = true
}, about)

-- SIDEBAR BUTTONS

local function tabButton(name, y)
    local b = button(sidebar, name, function()
        for _, page in pairs(pages) do
            page.Visible = false
        end

        pages[name].Visible = true
    end)

    b.Size = UDim2.new(1, -10, 0, 38)
    b.Position = UDim2.fromOffset(5, y)
    b.BackgroundColor3 = PANEL
end

tabButton("Home", 10)
tabButton("Player", 55)
tabButton("Settings", 100)
tabButton("About", 145)

pages.Home.Visible = true

print("MNK HUB V3 LOADED")
