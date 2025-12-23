local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

TextChatService.OnIncomingMessage = function(message)
    local properties = Instance.new("TextChatMessageProperties")
    if message.TextSource and message.TextSource.UserId == player.UserId then
        properties.PrefixText = "<font color='#0970ed'>[Vxalware]</font> " .. (message.PrefixText or "")
    end
    return properties
end
