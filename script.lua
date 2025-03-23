-- Random seed generator
function RandomNameGenerator()
	local seed = math.random(0, 99999999)
	print("Generated Seed: " .. seed)

	local digits = {}
	for digit in tostring(seed):gmatch("%d") do
		table.insert(digits, tonumber(digit))
	end

	local alphabet = {
		["ℵ"] = 0, ["∑"] = 1, ["∛"] = 2, ["∴"] = 3,
		["⟶"] = 4, ["∌"] = 5, ["⊕"] = 6, ["⋈"] = 7,
		["⅞"] = 8, ["№"] = 9
	}

	local name = ""
	for _, digit in ipairs(digits) do
		for letter, value in pairs(alphabet) do
			if value == digit then
				name ..= letter
				break
			end
		end
	end
	
	return name
end

local ScriptUi = Instance.new("GuiMain")
local ScreenWidth = Instance.new("Frame")
local HolderFrame = Instance.new("Frame")
local ContentFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")

ScriptUi.Name = RandomNameGenerator()
ScriptUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScriptUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScriptUi.DisplayOrder = 1000000020
ScriptUi.ResetOnSpawn = false

ScreenWidth.Name = "ScreenWidth"
ScreenWidth.Parent = ScriptUi
ScreenWidth.AnchorPoint = Vector2.new(0.5, 0.5)
ScreenWidth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenWidth.BackgroundTransparency = 1.000
ScreenWidth.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScreenWidth.BorderSizePixel = 0
ScreenWidth.Position = UDim2.new(0.5, 0, 0.5, 0)
ScreenWidth.Size = UDim2.new(1, 0, 1, 0)

HolderFrame.Name = "HolderFrame"
HolderFrame.Parent = ScreenWidth
HolderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
HolderFrame.BackgroundColor3 = Color3.fromRGB(39, 45, 63)
HolderFrame.BackgroundTransparency = 0.050
HolderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HolderFrame.BorderSizePixel = 0
HolderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
HolderFrame.Size = UDim2.new(0, 650, 0, 400)

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = HolderFrame
ContentFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ContentFrame.BackgroundColor3 = Color3.fromRGB(59, 58, 88)
ContentFrame.BackgroundTransparency = 0.500
ContentFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ContentFrame.BorderSizePixel = 0
ContentFrame.Position = UDim2.new(0.5, 0, 0.537500024, 0)
ContentFrame.Size = UDim2.new(1, 0, 0.925000012, 0)

UICorner.Parent = HolderFrame
