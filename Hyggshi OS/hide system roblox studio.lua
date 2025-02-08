local StarterGui = game:GetService("StarterGui")

StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
-- Disables All Main Core GUI

StarterGui:SetCore("ResetButtonCallback", false) -- Disables Reset Button.