-- This is the window drag and drop code, no need to put it in the tutorial, just put it in the Frame

local UIS = game:GetService('UserInputService')
local frame = script.Parent -- The frame you want to move
local dragToggle = nil -- Drag status flag
local dragSpeed = 0.25 -- Movement speed. Simply put, when the weight is set to 0.0, its movement speed will no longer have any effect and will be faster. You can try it like Windows on a real computer. But when it is set to higher like 0.80 or 90 or maybe higher, its speed will be slower.
local dragStart = nil -- Starting position when clicking
local startPos = nil -- Initial Position of Frame

-- Function to update position when dragging
local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

-- When you start clicking or touching
frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		-- Make sure to turn off the drag flag when finished.
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

-- When moving the mouse or touch while dragging
UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)