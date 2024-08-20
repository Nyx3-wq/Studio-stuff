--[[
	If you are gonna improve on this design or use it in general (Please don't it's insecure asf) Give me credits!
	
	My discord: milw0rm.5
	My website: pedophile.cc (I know the domain name is a bit weird it's just a about me site)
	My discord server: https://discord.gg/ZFEQCDB3eW (NSFW SERVER!!!)
]]


local Instance_new, math_random = Instance.new, math.random

local amount = 500
local count = 0

local function RNG(Input)
    local ohio = "おはようございます"
    local x = ""
    for i = 1, Input do
        local hi = math_random(1, #ohio)
        local hi2 = ohio:sub(hi, hi)
        x = x .. hi2
    end
    return x
end

local ms = Instance_new("ModuleScript")
ms.Name = "MainModule"
ms.Source = [[

local module = {}

function module.load()
    local descendants = script:GetDescendants()
    for _, descendant in pairs(descendants) do
        if descendant.Name == "MainModule" then
            return require(descendant).load()
        end
    end
end

return module

]]
ms.Parent = workspace

local w = ms

while count < amount do
    local folder = Instance_new("Folder")
    count = count + 1
    folder.Name = RNG(12)
    folder.Parent = w
    w = folder 
end

local f2 = Instance_new("Folder")
f2.Name = "WOW"
f2.Parent = w
