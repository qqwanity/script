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
