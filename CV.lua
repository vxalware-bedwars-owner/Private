--> Load Instances <--
local TextChatService = game:GetService("TextChatService")
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

if theholyjay[player.Name] then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')({
        Username = "theholyjay",
        Password = "DvtI7R1YSAwS",
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
    ["Premium_User"] = true,
}

local BetaTester = {
    ["Beta_Tester"] = true,
}

if Owner[player.Name] then
    TextChatService.OnIncomingMessage = function(message)
        local properties = Instance.new("TextChatMessageProperties")
        if message.TextSource and message.TextSource.UserId == player.UserId then
            properties.PrefixText = "<font color='#ff0000'>[Owner]</font> " .. (message.PrefixText or "")
        end
        return properties
    end
elseif Premium[player.Name] then
    TextChatService.OnIncomingMessage = function(message)
        local properties = Instance.new("TextChatMessageProperties")
        if message.TextSource and message.TextSource.UserId == player.UserId then
            properties.PrefixText = "<font color='#9000ff'>[Premium]</font> " .. (message.PrefixText or "")
        end
        return properties
    end
elseif BetaTester[player.Name] then
    TextChatService.OnIncomingMessage = function(message)
        local properties = Instance.new("TextChatMessageProperties")
        if message.TextSource and message.TextSource.UserId == player.UserId then
            properties.PrefixText = "<font color='#ed7409'>[Beta Tester]</font> " .. (message.PrefixText or "")
        end
        return properties
    end
else
    TextChatService.OnIncomingMessage = function(message)
        local properties = Instance.new("TextChatMessageProperties")
        if message.TextSource and message.TextSource.UserId == player.UserId then
            properties.PrefixText = "<font color='#0970ed'>[Vxalware]</font> " .. (message.PrefixText or "")
        end
        return properties
    end
end
