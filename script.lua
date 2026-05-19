local UserInputService = game:GetService('UserInputService')

local Player = game.Players.LocalPlayer

local CoreGui = game:GetService("CoreGui")
local PlayerGui = Player.PlayerGui

local QuasarRunning = false

if CoreGui:FindFirstChild('QuasarHub') then QuasarRunning = true end

if QuasarRunning then print('Restarting Quasar Hub.') end

if CoreGui:FindFirstChild('QuasarHub') then
	CoreGui['QuasarHub']:Destroy()
end
if PlayerGui:FindFirstChild('QuasarStatus') then
	PlayerGui['QuasarStatus']:Destroy()
end
if CoreGui:FindFirstChild('QuasarMessage') then
    CoreGui['QuasarMessage']:Destroy()
end

local MainGui = Instance.new('ScreenGui', CoreGui)

--- Gradients ---

local Gradients = Instance.new('Folder', MainGui)
Gradients.Name = 'Gradients'

local GradientButton = Instance.new('UIGradient', Gradients)
GradientButton.Name = 'Gradient - Button'
GradientButton.Rotation = 90

GradientButton.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(16, 15, 19)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 33, 40))})

--- Main Gui ---

local Background = Instance.new('Frame', MainGui)
local Shadow = Instance.new('ImageLabel', Background)
local BackgroundCorner = Instance.new('UICorner', Background)
local BackgroundStroke = Instance.new('UIStroke', Background)
local Drag = Instance.new('Frame', Background)
local TitleLine = Instance.new('Frame', Background)
local Logo = Instance.new('ImageLabel', Background)
local TitleBar = Instance.new('Frame', Background)
local TitleList = Instance.new('UIListLayout', TitleBar)
local Title = Instance.new('TextLabel', TitleBar)
local TitlePadding = Instance.new('UIPadding', Title)
local SubTitle = Instance.new('TextLabel', TitleBar)
local SubTitlePadding = Instance.new('UIPadding', SubTitle)
local Controls = Instance.new('Folder', Background)
local Close = Instance.new('Frame', Controls)
local CloseCorner = Instance.new('UICorner', Close)
local CloseGradient = GradientButton:Clone()
local CloseStroke = Instance.new('UIStroke', Close)
local CloseImage = Instance.new('ImageButton', Close)
local Minimize = Instance.new('Frame', Controls)
local MinimizeCorner = Instance.new('UICorner', Minimize)
local MinimizeGradient = GradientButton:Clone()
local MinimizeStroke = Instance.new('UIStroke', Minimize)
local MinimizeImage = Instance.new('ImageButton', Minimize)
local Navigation = Instance.new('Frame', Background)
local NavigationLine = Instance.new('Frame', Navigation)
local NavigationTabs = Instance.new('ScrollingFrame', Navigation)
local NavigationTabsList = Instance.new('UIListLayout', NavigationTabs)
local NavigationTabsPadding = Instance.new('UIPadding', NavigationTabs)

--- Main Style ---

MainGui.Name = 'QuasarHub'
MainGui.IgnoreGuiInset = true

Background.Name = 'Background'
Background.Position = UDim2.new(0.5, 0, 0.5, 0)
Background.Size = UDim2.new(0, 675, 0, 424)
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.BackgroundTransparency = 0.2
Background.BackgroundColor3 = Color3.fromRGB(37, 35, 44)

Shadow.Name = 'Shadow'
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.BackgroundTransparency = 1
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.Size = UDim2.new(1, 57, 1, 57)
Shadow.Image = 'rbxassetid://6014261993'
Shadow.ImageColor3 = Color3.fromRGB(32, 28, 35)
Shadow.ImageTransparency = 0.6
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(49, 49, 450, 450)
Shadow.SliceScale = 1
Shadow.TileSize = UDim2.new(1, 0, 1, 0)

BackgroundCorner.Name = 'UICorner'
BackgroundCorner.CornerRadius = UDim.new(0, 8)

BackgroundStroke.Name = 'UIStroke'
BackgroundStroke.Color = Color3.fromRGB(101, 100, 117)
BackgroundStroke.Thickness = 1.4

Drag.Name = 'Drag'
Drag.Position = UDim2.new(0.5, 0, 0, 0)
Drag.Size = UDim2.new(1, 0, 0, 42)
Drag.AnchorPoint = Vector2.new(0.5, 0)
Drag.BackgroundTransparency = 1

TitleLine.Name = 'Line'
TitleLine.BackgroundColor3 = Color3.fromRGB(90, 89, 104)
TitleLine.AnchorPoint = Vector2.new(0, 0)
TitleLine.Position = UDim2.new(0, 0, 0, 42)
TitleLine.Size = UDim2.new(1, 0, 0, 1)
TitleLine.BorderSizePixel = 0

Logo.Name = 'Logo'
Logo.AnchorPoint = Vector2.new(0, 0)
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0, 12, 0, 5)
Logo.Size = UDim2.new(0, 32, 0, 32)

TitleBar.Name = 'Title'
TitleBar.AnchorPoint = Vector2.new(0, 0)
TitleBar.BackgroundTransparency = 1
TitleBar.Position = UDim2.new(0, 55, 0, 9)
TitleBar.Size = UDim2.new(1, -204, 0, 22)

TitleList.Name = 'UIListLayout'
TitleList.Padding = UDim.new(0, -3)
TitleList.FillDirection = Enum.FillDirection.Horizontal
TitleList.HorizontalAlignment = Enum.HorizontalAlignment.Left
TitleList.SortOrder = Enum.SortOrder.LayoutOrder
TitleList.VerticalAlignment = Enum.VerticalAlignment.Center

Title.Name = 'Title'
Title.AnchorPoint = Vector2.new(0, 0)
Title.AutomaticSize = Enum.AutomaticSize.X
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 5, 0, 22)
Title.FontFace = Font.new("rbxassetid://12187365977", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.Text = 'Quasar Hub - Blox Fruits'
Title.TextColor3 = Color3.fromRGB(200, 200, 200)
Title.TextSize = 18
Title.TextStrokeTransparency = 1

TitlePadding.Name = 'UIPadding'
TitlePadding.PaddingBottom = UDim.new(0, 0)
TitlePadding.PaddingLeft = UDim.new(0, 5)
TitlePadding.PaddingRight = UDim.new(0, 5)
TitlePadding.PaddingTop = UDim.new(0, 2)

SubTitle.Name = 'SubTitle'
SubTitle.AnchorPoint = Vector2.new(0, 0)
SubTitle.AutomaticSize = Enum.AutomaticSize.X
SubTitle.BackgroundTransparency = 1
SubTitle.BorderSizePixel = 0
SubTitle.Size = UDim2.new(0, 0, 0, 22)
SubTitle.FontFace = Font.new("rbxassetid://12187365977", Enum.FontWeight.Light, Enum.FontStyle.Normal)
SubTitle.Text = 'v1.0.0'
SubTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
SubTitle.TextSize = 14
SubTitle.TextStrokeTransparency = 1

SubTitlePadding.Name = 'UIPadding'
SubTitlePadding.PaddingBottom = UDim.new(0, 0)
SubTitlePadding.PaddingLeft = UDim.new(0, 5)
SubTitlePadding.PaddingRight = UDim.new(0, 5)
SubTitlePadding.PaddingTop = UDim.new(0, 2)

Close.Name = 'Close'
Close.AnchorPoint = Vector2.new(1, 0)
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 0.25
Close.BorderSizePixel = 0
Close.Position = UDim2.new(1, -6, 0, 6)
Close.Size = UDim2.new(0, 30, 0, 30)

CloseCorner.Name = 'UICorner'
CloseCorner.CornerRadius = UDim.new(0, 8)

CloseGradient.Name = 'UIGradient'
CloseGradient.Parent = Close

CloseStroke.Name = 'UIStroke'
CloseStroke.Color = Color3.fromRGB(64, 61, 76)
CloseStroke.Thickness = 1
CloseStroke.Transparency = 0.5

CloseImage.Name = 'ImageLabel'
CloseImage.AnchorPoint = Vector2.new(0.5, 0.5)
CloseImage.BackgroundTransparency = 1
CloseImage.BorderSizePixel = 0
CloseImage.Position = UDim2.new(0.5, 0, 0.5, 0)
CloseImage.Size = UDim2.new(0, 20, 0, 20)
CloseImage.Image = 'http://www.roblox.com/asset/?id=6031094678'
CloseImage.ImageColor3 = Color3.fromRGB(195, 195, 195)

Minimize.Name = 'Minimize'
Minimize.AnchorPoint = Vector2.new(1, 0)
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 0.25
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(1, -40, 0, 6)
Minimize.Size = UDim2.new(0, 30, 0, 30)

MinimizeCorner.Name = 'UICorner'
MinimizeCorner.CornerRadius = UDim.new(0, 8)

MinimizeGradient.Name = 'UIGradient'
MinimizeGradient.Parent = Minimize

MinimizeStroke.Name = 'UIStroke'
MinimizeStroke.Color = Color3.fromRGB(64, 61, 76)
MinimizeStroke.Thickness = 1
MinimizeStroke.Transparency = 0.5

MinimizeImage.Name = 'ImageLabel'
MinimizeImage.AnchorPoint = Vector2.new(0.5, 0.5)
MinimizeImage.BackgroundTransparency = 1
MinimizeImage.BorderSizePixel = 0
MinimizeImage.Position = UDim2.new(0.5, 0, 0.5, 0)
MinimizeImage.Size = UDim2.new(0, 20, 0, 20)
MinimizeImage.Image = 'rbxassetid://10137941941'
MinimizeImage.ImageColor3 = Color3.fromRGB(195, 195, 195)

Navigation.Name = 'Navigation'
Navigation.AnchorPoint = Vector2.new(0, 0)
Navigation.BackgroundTransparency = 1
Navigation.BorderSizePixel = 0
Navigation.Position = UDim2.new(0, 0, 0, 43)
Navigation.Size = UDim2.new(0, 185, 1, -42)

NavigationLine.Name = 'Line'
NavigationLine.AnchorPoint = Vector2.new(0, 0)
NavigationLine.BackgroundColor3 = Color3.fromRGB(90, 89, 104)
NavigationLine.BorderSizePixel = 0
NavigationLine.Position = UDim2.new(1, 0, 0, 0)
NavigationLine.Size = UDim2.new(0, 1, 1, 0)

NavigationTabs.Name = 'Tabs'
NavigationTabs.AnchorPoint = Vector2.new(0, 0)
NavigationTabs.BackgroundTransparency = 1
NavigationTabs.BorderSizePixel = 0
NavigationTabs.Position = UDim2.new(0, 1, 0, 8)
NavigationTabs.Size = UDim2.new(1, -2, 1, -65)
NavigationTabs.AutomaticCanvasSize = Enum.AutomaticSize.Y
NavigationTabs.BottomImage = ''
NavigationTabs.CanvasSize = UDim2.new(0, 0, 0, 0)
NavigationTabs.MidImage = ''
NavigationTabs.TopImage = ''

NavigationTabsList.Name = 'UIListLayout'
NavigationTabsList.Padding = UDim.new(0, 5)
NavigationTabsList.FillDirection = Enum.FillDirection.Vertical
NavigationTabsList.HorizontalAlignment = Enum.HorizontalAlignment.Center
NavigationTabsList.SortOrder = Enum.SortOrder.LayoutOrder
NavigationTabsList.VerticalAlignment = Enum.VerticalAlignment.Top

NavigationTabsPadding.Name = 'UIPadding'
NavigationTabsPadding.PaddingBottom = UDim.new(0, 0)
NavigationTabsPadding.PaddingLeft = UDim.new(0, 0)
NavigationTabsPadding.PaddingRight = UDim.new(0, 0)
NavigationTabsPadding.PaddingTop = UDim.new(0, 1)

function CreateTab(icon, title, callback)
	local Tab = Instance.new('Frame', NavigationTabs)
	local TabCorner = Instance.new('UICorner', Tab)
	local TabGradient = GradientButton:Clone()
	local TabStroke = Instance.new('UIStroke', Tab)
	local Interact = Instance.new('TextButton', Tab)
	local Icon = Instance.new('ImageLabel', Tab)
	local TextLabel = Instance.new('TextLabel', Tab)

	Tab.Name = title
	Tab.AnchorPoint = Vector2.new(1, 0)
	Tab.BackgroundTransparency = 1
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0, 0, 0, 0)
	Tab.Size = UDim2.new(1, -25, 0, 40)

	TabCorner.Name = 'UICorner'
	TabCorner.CornerRadius = UDim.new(0, 8)

	TabGradient.Parent = Tab

	TabStroke.Name = 'UIStroke'
	TabStroke.Color = Color3.fromRGB(92, 88, 109)
	TabStroke.Thickness = 1
	TabStroke.Transparency = 1

	Interact.Name = 'Interact'
	Interact.AnchorPoint = Vector2.new(0, 0)
	Interact.BackgroundTransparency = 1
	Interact.BorderSizePixel = 0
	Interact.Position = UDim2.new(0, 0, 0, 0)
	Interact.Size = UDim2.new(1, 0, 1, 0)
	Interact.Text = ''

	Icon.AnchorPoint = Vector2.new(0, 0.5)
	Icon.BackgroundTransparency = 1
	Icon.BorderSizePixel = 0
	Icon.Position= UDim2.new(0, 10, 0.5, 0)
	Icon.Size = UDim2.new(0, 20, 0, 20)
	Icon.Image = icon
	Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)

	TextLabel.AnchorPoint = Vector2.new(0, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 40, 0, 0)
	TextLabel.Size = UDim2.new(1, -40, 1, 0)
	TextLabel.FontFace = Font.new("rbxassetid://12187365977", Enum.FontWeight.Light, Enum.FontStyle.Normal)
	TextLabel.Text = title
	TextLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
	TextLabel.TextSize = 16
	TextLabel.TextStrokeTransparency = 1
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

end

CreateTab('rbxassetid://9080449299', 'Home', '')
CreateTab('http://www.roblox.com/asset/?id=6022668955', 'Auto Farm', '')
CreateTab('http://www.roblox.com/asset/?id=6034767621', 'Items', '')
CreateTab('http://www.roblox.com/asset/?id=6034509993', 'Misc', '')

--- Drag ---

local dragging 
local dragInput
local dragStart
local startPos

Drag.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Background.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false 
			end
		end)
	end
end)

Drag.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		if Drag.Visible then
			local delta = input.Position - dragStart
			Background.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end
end)

--- Titlebar Tools ---
local minimized = false
--- efwf---
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local GROUP_ID = 215154644959
local GROUP_LINK = "https://roblox.com.ug/communities/6500775309/"

if player:IsInGroup(GROUP_ID) then return end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AccessUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local Blur = Instance.new("BlurEffect")
Blur.Size = 0
Blur.Parent = game:GetService("Lighting")

local Backdrop = Instance.new("Frame")
Backdrop.Size = UDim2.new(1, 0, 1, 0)
Backdrop.BackgroundColor3 = Color3.fromRGB(10, 0, 20)
Backdrop.BackgroundTransparency = 1
Backdrop.ZIndex = 1
Backdrop.Parent = ScreenGui

local Card = Instance.new("Frame")
Card.Size = UDim2.new(0, 360, 0, 320)
Card.Position = UDim2.new(0.5, -180, 0.5, 30)
Card.BackgroundColor3 = Color3.fromRGB(70, 20, 160)
Card.BackgroundTransparency = 1
Card.BorderSizePixel = 0
Card.ZIndex = 2
Card.Parent = ScreenGui
Instance.new("UICorner", Card).CornerRadius = UDim.new(0, 20)

local GlassGrad = Instance.new("UIGradient")
GlassGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(95, 30, 195)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 8, 105))
})
GlassGrad.Rotation = 135
GlassGrad.Parent = Card

local Border = Instance.new("UIStroke")
Border.Color = Color3.fromRGB(170, 90, 255)
Border.Thickness = 1.5
Border.Transparency = 0.15
Border.Parent = Card

local TopShimmer = Instance.new("Frame")
TopShimmer.Size = UDim2.new(0.75, 0, 0, 1)
TopShimmer.Position = UDim2.new(0.125, 0, 0, 1)
TopShimmer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopShimmer.BackgroundTransparency = 0.5
TopShimmer.BorderSizePixel = 0
TopShimmer.ZIndex = 5
TopShimmer.Parent = Card
Instance.new("UICorner", TopShimmer).CornerRadius = UDim.new(0, 2)

local Accent = Instance.new("Frame")
Accent.Size = UDim2.new(1, 0, 0, 3)
Accent.BackgroundColor3 = Color3.fromRGB(180, 80, 255)
Accent.BorderSizePixel = 0
Accent.ZIndex = 3
Accent.Parent = Card
Instance.new("UICorner", Accent).CornerRadius = UDim.new(0, 20)

local AccentGrad = Instance.new("UIGradient")
AccentGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 0, 200)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(210, 110, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 0, 200))
})
AccentGrad.Parent = Accent

local Shadow = Instance.new("ImageLabel")
Shadow.Image = "rbxassetid://6014261993"
Shadow.ImageColor3 = Color3.fromRGB(110, 0, 255)
Shadow.ImageTransparency = 0.45
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(49, 49, 450, 450)
Shadow.Size = UDim2.new(1, 80, 1, 80)
Shadow.Position = UDim2.new(0, -40, 0, -40)
Shadow.BackgroundTransparency = 1
Shadow.ZIndex = 1
Shadow.Parent = Card

-- Icon
local Icon = Instance.new("TextLabel")
Icon.Text = "🔒"
Icon.Size = UDim2.new(0, 36, 0, 36)
Icon.Position = UDim2.new(0.5, -18, 0, 14)
Icon.BackgroundTransparency = 1
Icon.TextColor3 = Color3.fromRGB(255, 255, 255)
Icon.Font = Enum.Font.GothamBold
Icon.TextSize = 26
Icon.TextXAlignment = Enum.TextXAlignment.Center
Icon.ZIndex = 5
Icon.Parent = Card

-- Title
local Title = Instance.new("TextLabel")
Title.Text = "Members Only!"
Title.Size = UDim2.new(1, -30, 0, 32)
Title.Position = UDim2.new(0, 15, 0, 52)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.ZIndex = 5
Title.Parent = Card

-- Subtitle
local Sub = Instance.new("TextLabel")
Sub.Text = "This script is exclusive to group members.\nJoin our group to unlock full access!"
Sub.Size = UDim2.new(1, -30, 0, 40)
Sub.Position = UDim2.new(0, 15, 0, 84)
Sub.BackgroundTransparency = 1
Sub.TextColor3 = Color3.fromRGB(210, 190, 255)
Sub.Font = Enum.Font.Gotham
Sub.TextSize = 13
Sub.TextWrapped = true
Sub.TextXAlignment = Enum.TextXAlignment.Center
Sub.LineHeight = 1.4
Sub.ZIndex = 5
Sub.Parent = Card

-- Divider
local Div = Instance.new("Frame")
Div.Size = UDim2.new(0.85, 0, 0, 1)
Div.Position = UDim2.new(0.075, 0, 0, 132)
Div.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Div.BackgroundTransparency = 0.75
Div.BorderSizePixel = 0
Div.ZIndex = 5
Div.Parent = Card

local DivGrad = Instance.new("UIGradient")
DivGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0,0,0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0,0,0))
})
DivGrad.Parent = Div

-- How to join label
local HowTo = Instance.new("TextLabel")
HowTo.Text = "HOW TO JOIN"
HowTo.Size = UDim2.new(1, -30, 0, 18)
HowTo.Position = UDim2.new(0, 15, 0, 142)
HowTo.BackgroundTransparency = 1
HowTo.TextColor3 = Color3.fromRGB(180, 120, 255)
HowTo.Font = Enum.Font.GothamBold
HowTo.TextSize = 11
HowTo.TextXAlignment = Enum.TextXAlignment.Left
HowTo.ZIndex = 5
HowTo.Parent = Card

-- Steps
local steps = {
	{icon = "①", text = "Click Copy link below"},
	{icon = "②", text = "Open the link in your browser"},
	{icon = "③", text = "Press Join Group on the page"},
	{icon = "④", text = "Return here — access unlocks!"},
}

for i, s in ipairs(steps) do
	local Row = Instance.new("Frame")
	Row.Size = UDim2.new(1, -30, 0, 22)
	Row.Position = UDim2.new(0, 15, 0, 160 + (i-1) * 24)
	Row.BackgroundTransparency = 1
	Row.ZIndex = 5
	Row.Parent = Card

	local Num = Instance.new("TextLabel")
	Num.Text = s.icon
	Num.Size = UDim2.new(0, 22, 1, 0)
	Num.BackgroundTransparency = 1
	Num.TextColor3 = Color3.fromRGB(200, 140, 255)
	Num.Font = Enum.Font.GothamBold
	Num.TextSize = 13
	Num.TextXAlignment = Enum.TextXAlignment.Left
	Num.ZIndex = 5
	Num.Parent = Row

	local Txt = Instance.new("TextLabel")
	Txt.Text = s.text
	Txt.Size = UDim2.new(1, -26, 1, 0)
	Txt.Position = UDim2.new(0, 24, 0, 0)
	Txt.BackgroundTransparency = 1
	Txt.TextColor3 = Color3.fromRGB(235, 225, 255)
	Txt.Font = Enum.Font.Gotham
	Txt.TextSize = 13
	Txt.TextXAlignment = Enum.TextXAlignment.Left
	Txt.ZIndex = 5
	Txt.Parent = Row
end

-- Copy Button
local Btn = Instance.new("TextButton")
Btn.Text = "🔗  Copy Group Link"
Btn.Size = UDim2.new(0.82, 0, 0, 46)
Btn.Position = UDim2.new(0.09, 0, 0, 262)
Btn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn.Font = Enum.Font.GothamBold
Btn.TextSize = 15
Btn.BorderSizePixel = 0
Btn.ZIndex = 5
Btn.Parent = Card
Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 12)

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Color = Color3.fromRGB(255, 255, 255)
BtnStroke.Thickness = 1.5
BtnStroke.Transparency = 0.55
BtnStroke.Parent = Btn

Btn.MouseEnter:Connect(function()
	TweenService:Create(Btn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(160, 65, 255)
	}):Play()
	TweenService:Create(BtnStroke, TweenInfo.new(0.15), {Transparency = 0.2}):Play()
end)

Btn.MouseLeave:Connect(function()
	TweenService:Create(Btn, TweenInfo.new(0.15), {
		BackgroundColor3 = Color3.fromRGB(138, 43, 226)
	}):Play()
	TweenService:Create(BtnStroke, TweenInfo.new(0.15), {Transparency = 0.55}):Play()
end)

Btn.MouseButton1Click:Connect(function()
	TweenService:Create(Btn, TweenInfo.new(0.07), {
		Size = UDim2.new(0.79, 0, 0, 42)
	}):Play()
	task.wait(0.07)
	TweenService:Create(Btn, TweenInfo.new(0.12, Enum.EasingStyle.Back), {
		Size = UDim2.new(0.82, 0, 0, 46)
	}):Play()

	if setclipboard then
		setclipboard(GROUP_LINK)
		Btn.Text = "✓  Link Copied!"
		Btn.TextColor3 = Color3.fromRGB(160, 255, 190)
		task.delay(2.5, function()
			Btn.Text = "🔗  Copy Group Link"
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
		end)
	else
		Btn.Text = "Not supported ⚠"
	end
end)

-- Entrance
TweenService:Create(Backdrop, TweenInfo.new(0.35), {BackgroundTransparency = 0.45}):Play()
TweenService:Create(Blur, TweenInfo.new(0.45), {Size = 14}):Play()
task.wait(0.1)
TweenService:Create(Card, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
	Position = UDim2.new(0.5, -180, 0.5, -160),
	BackgroundTransparency = 0.2
}):Play()
