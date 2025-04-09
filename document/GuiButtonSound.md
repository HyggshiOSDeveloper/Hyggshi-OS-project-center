# **Lua Code Documentation for Roblox Studio - Button Sound**

## **Description**
- This code plays a sound when the player clicks a button in the interface (`GUI Button`).

- The sound (`Sound`) must be set as a child (`Child`) of the button (`Button`).

---

## **📜 Code**
```lua
local button = script.Parent -- Get the Button
local sound = button:FindFirstChild("Sound") -- Get the Sound in the Button

button.MouseButton1Click:Connect(function()
if sound then
sound:Play() -- Play the sound when the button is clicked
end
end)
```

---

## **📌 How to use**
1. **Create a GUI Button** in `ScreenGui`.
2. **Add a "Sound"** object as a child of the Button.
- Select **Button** → Right click → Select **Insert Object** → Select **Sound**.
- Set the **SoundId** property to select the sound to play.
3. **Attach the script to the Button** (put this script in the Button).
4. When the button is pressed, the sound will play if it exists in the Button.

---

## **🔧 Note**
- If the button does not have `Sound`, the code will not cause an error but just ignore the `sound:Play()` command.
- You can change `SoundId` in **Properties** of `Sound` to play a different sound.