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

local HolyWrapper = [[
    if type(queue_on_teleport) == "function" then
        queue_on_teleport(...)
    elseif type(queueonteleport) == "function" then
        queueonteleport(...)
    end
]] .. "\n" .. AutoExec

local function Queue()
    if type(queue_on_teleport) == "function" then
        queue_on_teleport(string.format(HolyWrapper, string.format("%q", HolyWrapper)))
    elseif type(queueonteleport) == "function" then
        queueonteleport(string.format(HolyWrapper, string.format("%q", HolyWrapper)))
    else
        warn("No 'queue on teleport' function found")
    end
end

Queue()

loadstring(AutoExec)()
