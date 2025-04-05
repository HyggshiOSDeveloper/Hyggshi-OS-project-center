local screenGui = script.Parent
local frame1 = screenGui:FindFirstChild("Frame1")
local frame2 = screenGui:FindFirstChild("Frame2")
local frame3 = screenGui:FindFirstChild("Frame3")
local frame4 = screenGui:FindFirstChild("Frame4") -- There may be more depending on
local colorPicker = screenGui:FindFirstChild("ColorPicker") -- TextBox enter color

if not frame1 or not frame2 or not frame3 or not frame4 or not colorPicker then
	warn("One or more GUI elements do not exist! Check Frame or ColorPicker.")
	return
end

-- Function to change color for all Frames
local function changeColor(r, g, b)
	local newColor = Color3.fromRGB(r, g, b)
	frame1.BackgroundColor3 = newColor
	frame2.BackgroundColor3 = newColor
	frame3.BackgroundColor3 = newColor
	frame4.BackgroundColor3 = newColor
end

-- Assign events to color change buttons
local redButton = screenGui:FindFirstChild("RedButton")
local greenButton = screenGui:FindFirstChild("GreenButton")
local blueButton = screenGui:FindFirstChild("BlueButton")
local darkSlateGray1Button = screenGui:FindFirstChild("DarkSlateGray1Button")
local darkSlateGray3Button = screenGui:FindFirstChild("DarkSlateGray3Button")
local RoyalBlue2Button = screenGui:FindFirstChild("RoyalBlue2Button")
local BrightBlueButton = screenGui:FindFirstChild("BrightBlueButton")
local BrightRedButton = screenGui:FindFirstChild("BrightRedButton")
local BrightGreenButton = screenGui:FindFirstChild("BrightGreenButton")
local NewYellerButton = screenGui:FindFirstChild("NewYellerButton") -- There may be more depending on

if redButton then
	redButton.MouseButton1Click:Connect(function()
		changeColor(255, 0, 0) -- Red
	end)
else
	warn("RedButton does not exist!")
end

if greenButton then
	greenButton.MouseButton1Click:Connect(function()
		changeColor(0, 255, 0) -- Green
	end)
else
	warn("GreenButton does not exist!")
end

if blueButton then
	blueButton.MouseButton1Click:Connect(function()
		changeColor(0, 0, 255) -- Blue
	end)
else
	warn("BlueButton does not exist!")
end

if darkSlateGray1Button then
	darkSlateGray1Button.MouseButton1Click:Connect(function()
		changeColor(151, 255, 255) -- Light blue
	end)
else
	warn("DarkSlateGray1Button does not exist!")
end

if darkSlateGray3Button then
	darkSlateGray3Button.MouseButton1Click:Connect(function()
		changeColor(121, 205, 205) -- Darker green
	end)
else
	warn("DarkSlateGray3Button does not exist!")
end

if RoyalBlue2Button then
	RoyalBlue2Button.MouseButton1Click:Connect(function()
		changeColor(67, 110, 238) -- Royal Blue 2
	end)
else
	warn("RoyalBlue2Button does not exist!")
end

if BrightBlueButton then
	BrightBlueButton.MouseButton1Click:Connect(function()
		changeColor(13, 105, 172) -- Bright Blue
	end)
else
	warn("BrightBlueButton does not exist!")
end

if BrightRedButton then
	BrightRedButton.MouseButton1Click:Connect(function()
		changeColor(208, 2, 27) -- Bright Red
	end)
else
	warn("BrightRedButton does not exist!")
end

if BrightGreenButton then
	BrightGreenButton.MouseButton1Click:Connect(function()
		changeColor(75, 159, 74) -- Bright Green
	end)
else
	warn("BrightGreenButton does not exist!")
end

if NewYellerButton then
	NewYellerButton.MouseButton1Click:Connect(function()
		changeColor(255, 233, 0) -- New Yeller
	end)
else
	warn("NewYellerButton does not exist!")
end

-- Processing input from ColorPicker (TextBox)
colorPicker.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local text = colorPicker.Text:lower():gsub("%s+", "") -- Remove spaces, convert to lowercase

		if text:sub(1, 1) == "#" and #text == 7 then
			-- If it is HEX code (#RRGGBB)
			local r = tonumber(text:sub(2, 3), 16)
			local g = tonumber(text:sub(4, 5), 16)
			local b = tonumber(text:sub(6, 7), 16)
			if r and g and b then
				changeColor(r, g, b)
			else
				warn("Invalid HEX code! Please enter #RRGGBB.")
			end
		else
			-- If it is RGB (R, G, B)
			local r, g, b = text:match("(%d+),(%d+),(%d+)")
			if r and g and b then
				r, g, b = tonumber(r), tonumber(g), tonumber(b)
				if r and g and b and r <= 255 and g <= 255 and b <= 255 then
					changeColor(r, g, b)
				else
					warn("RGB values ​​must be between 0-255!")
				end
			else
				warn("Incorrect format! Enter #RRGGBB or R, G, B (eg: 255, 100, 50)")
			end
		end
	end
end)
