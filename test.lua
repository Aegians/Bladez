
local runService = game:GetService("RunService")
local workspace = game:GetService("Workspace")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")


local function onCharacterAdded(newCharacter)
    character = newCharacter
end

localPlayer.CharacterAdded:Connect(onCharacterAdded)

local function isPlayerOnMobile()
    return UserInputService.TouchEnabled and not (UserInputService.KeyboardEnabled or UserInputService.GamepadEnabled)
end

local Rayfield

if isPlayerOnMobile() then
    Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AArrayfield%20Library'))()
else
    Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end

local Window = Rayfield:CreateWindow({
   Name = "Blade Ball Main",
   LoadingTitle = "Blade Ball",
   LoadingSubtitle = "by Aegians",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "BladeBall",
      FileName = "Configuration"
   },
   Discord = {
      Enabled = false,
      Invite = "Niggas",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "IDK",
      Subtitle = "Key System",
      Note = "nuh",
      FileName = "??",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = "Hello"
   }
})

local Main = Window:CreateTab("Main", 13014546637)

local MainScriptwithPingbasedParry = Main:CreateButton({
    Name = "Ping-Based Parry",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Aegians/Bladez/main/Ping-Parry.lua", true))()
 end,
})

local MainScriptwithAdjustableParry = Main:CreateButton({
    Name = "Adjutsable Distance Parry",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Aegians/Bladez/main/Adjustable%20Parry.lua", true))()
 end,
})

local AdminCommand = Main:CreateButton({
    Name = "Infinite Yiff",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
 end,
})
