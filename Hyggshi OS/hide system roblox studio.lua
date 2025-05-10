-- =====================================================================================
--                                COMPONENT INFORMATION                                
-- =====================================================================================
-- Script Name: hide system roblox studio.lua
-- Purpose    : Kicks players from the game if they are listed in the bannedPlayers table.
-- Script Type: LocalScript (must be placed in StarterGui)
-- Author     : HyggshiOSDeveloper
-- Email      : hyggshidev@gmail.com
-- Version    : 1.0
-- Last Updated: 2025-05-10
-- =====================================================================================


local StarterGui = game:GetService("StarterGui")

StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
-- Disables All Main Core GUI

StarterGui:SetCore("ResetButtonCallback", false) -- Disables Reset Button.