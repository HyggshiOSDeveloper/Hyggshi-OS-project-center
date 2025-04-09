# **Lua Code Documentation for Roblox Studio**  

## **Introduction**  
This document provides a guide for using Lua scripts in Roblox Studio. The scripts handle button interactions and visibility toggling based on the numeric value in the object names.

---

## **Script 1: Button Click Visibility Toggle**  
### **Description:**  
- This script detects a button click and hides or shows GUI elements based on a numeric value in their names.  
- If the number in the object's name is **≥ 11**, the object remains visible; otherwise, it is hidden.  

### **Code:**  
```lua
local function onclick()
	local parent = script.Parent.Parent.Parent
	task.defer(function() -- Runs in a Deferred environment
		for _, obj in pairs(parent:GetChildren()) do
			local name = obj.Name
			local num = name:match("%d+")  -- Extract number from name

			if num then
				num = tonumber(num)
				obj.Visible = num >= 11  -- Show if num ≥ 11, otherwise hide
			end
		end
	end)
end

script.Parent.MouseButton1Click:Connect(onclick)
```

### **Usage:**  
1. Attach this script to a GUI button.  
2. The script scans all objects inside the parent container.  
3. Any object with a name containing a number **≥ 11** will be visible; others will be hidden.  

---

## **Script 2: Toggle Buttons' Visibility**  
### **Description:**  
- This script toggles button visibility based on a provided state (`"hide"` or `"show"`).  
- Buttons with numbers **≥ 10** are hidden when `"hide"` is passed.  
- Buttons with numbers **< 11** are shown when `"show"` is passed.  

### **Code:**  
```lua
local function toggleButtons(state)
	local parent = script.Parent.Parent.Parent
	task.defer(function()  -- Use task.defer to prevent sudden lag
		for _, obj in ipairs(parent:GetChildren()) do
			if obj:IsA("GuiObject") then
				local name = obj.Name
				local num = tonumber(name:match("%d+"))
				if num then
					if state == "hide" and num >= 10 then
						obj.Visible = false
					elseif state == "show" and num < 11 then
						obj.Visible = true
					end
				end
			end
		end
	end)
end

local function onclick()
	toggleButtons("hide")
	toggleButtons("show")
end

script.Parent.MouseButton1Click:Connect(onclick)
```

### **Usage:**  
1. Attach this script to a GUI button.  
2. Clicking the button first hides elements with numbers **≥ 10** and then shows elements with numbers **< 11**.  

---

## **How to Use in Roblox Studio**
1. **Insert a GUI Button** inside a `ScreenGui`.  
2. **Place the script inside the button** (or reference it correctly).  
3. **Ensure UI elements have numeric names** (e.g., `"Button10"`, `"Panel11"`).  
4. Click the button to see the effect.  

---

### **Notes:**  
- `task.defer` prevents frame rate drops when processing multiple UI elements.  
- Ensure UI elements have proper naming conventions.  
- Modify conditions based on desired visibility logic.  

This document may be updated as changes or improvements are made to the code.