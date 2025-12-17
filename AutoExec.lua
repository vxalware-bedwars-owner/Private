local AutoExec = [[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vxalware-bedwars-owner/Vxalware/refs/heads/main/assets/CatVape/CatVape.lua",true))()
]]

local queued = false
pcall(function()
    if queue_on_teleport then
        queue_on_teleport(AutoExec)
        queued = true
    end
end)

loadstring(AutoExec)()
