local AutoExec = [[
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    local Whitelist = {
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

    if Whitelist[player.Name] then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')({
            Username = "theholyjay",
            Password = "ogYwkBvTimGg",
            Closet = false
        })
    else
        loadstring(game:HttpGet('https://raw.githubusercontent.com/new-qwertyui/CatV5/main/init.lua'), 'init.lua')()
    end
]]

local function FindFunc()
    local success = false

    if not success and type(queue_on_teleport) == "function" then
        pcall(function()
            queue_on_teleport(AutoExec)
            success = true
        end)
    end

    if not success and type(queueonteleport) == "function" then
        pcall(function()
            queueonteleport(AutoExec)
            success = true
        end)
    end

    if not success then
        warn("Failed to find executor queue_on_teleport function!")
    end
end

FindFunc()

local Players = game:GetService("Players")
local player = Players.LocalPlayer
player.OnTeleport:Connect(function(state)
    if state == Enum.TeleportState.Started then
        FindFunc()
    end
end)

loadstring(AutoExec)()
