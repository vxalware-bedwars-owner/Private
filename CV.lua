--> Load Instances <--
local TextChatService = game:GetService("TextChatService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

--> Custom loader <--
local theholyjay = {
    ["nimitz3652"] = true,
    ["thatoneguy2881"] = true,
    ["TheRobloxProPlayer02"] = true,
    ["drippingtomatosause"] = true,
    ["drippingtomatosause2"] = true,
    ["drippingtomatosause3"] = true,
    ["drippingtomatosause4"] = true,
    ["drippingtomatosause5"] = true,
    ["GreasySiddharth"] = true,
    ["GreasySiddharth2"] = true,
    ["GreasySiddharth3"] = true,
    ["GreasySiddharth4"] = true,
    ["GreasySiddharth5"] = true,
    ["31515121194_HXR"] = true,
}

local ajklost = {
    ["Yourlocalnoob520"] = true,
}

if theholyjay[player.Name] then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')({
        Username = "theholyjay",
        Password = "DvtI7R1YSAwS",
        Closet = false
    })
elseif ajklost[player.Name] then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')({
        Username = "ajklost.",
        Password = "KN6BrU0jODN8",
        Closet = false
    })
else
    loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')()
end

--> Chat tag loader <--
local Owner = {
    ["nimitz3652"] = true,
    ["thatoneguy2881"] = true,
    ["TheRobloxProPlayer02"] = true,
    ["drippingtomatosause"] = true,
    ["drippingtomatosause2"] = true,
    ["drippingtomatosause3"] = true,
    ["drippingtomatosause4"] = true,
    ["drippingtomatosause5"] = true,
    ["GreasySiddharth"] = true,
    ["GreasySiddharth2"] = true,
    ["GreasySiddharth3"] = true,
    ["GreasySiddharth4"] = true,
    ["GreasySiddharth5"] = true,
    ["31515121194_HXR"] = true,
}

local Premium = {
    ["Yourlocalnoob520"] = true,
}

local BetaTester = {
    ["BetaTester520"] = true,
}

local function OverrideHandler(message)
    if not message.TextSource or message.TextSource.UserId ~= player.UserId then
        return
    end

    local Properties = Instance.new("TextChatMessageProperties")
    if Owner[player.Name] then
        Properties.PrefixText = "<font color='#eb4034'>[Owner]</font>"
    elseif Premium[player.Name] then
        Properties.PrefixText = "<font color='#a834eb'>[Premium]</font>"
    elseif BetaTester[player.Name] then
        Properties.PrefixText = "<font color='#ed7409'>[Beta Tester]</font>"
    else
        Properties.PrefixText = "<font color='#0970ed'>[Vxalware]</font>"
    end
    Properties.PrefixText ..=(message.PrefixText or "")
    return Properties
end

TextChatService.OnIncomingMessage = OverrideHandler
RunService.Heartbeat:Connect(function()
    TextChatService.OnIncomingMessage = OverrideHandler
end)
