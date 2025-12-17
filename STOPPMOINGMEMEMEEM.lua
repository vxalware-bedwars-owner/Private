local scriptGay = [[
    print("Hello World")
]]
print("safe check")

local execName = identifyexecutor()
local tpFuncs = {
    "queue_on_teleport",
    "queue.on_teleport",
    "queue.onTeleport",
}

local autoExec
for _, funcName in ipairs(tpFuncs) do
    if _G[execName] and _G[execName].queue and _G[execName].queue[funcName] then
        autoExec = _G[execName].queue[funcName]
        break
    end
end

if autoExec then
    autoExec(scriptGay)
end
