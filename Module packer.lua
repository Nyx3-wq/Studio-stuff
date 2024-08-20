--[[
	If you are gonna improve on this design or use it in general (Please don't it's insecure asf) Give me credits!
	
	My discord: milw0rm.5
	My website: pedophile.cc (I know the domain name is a bit weird it's just a about me site)
	My discord server: https://discord.gg/ZFEQCDB3eW (NSFW SERVER!!!)
]]


local Services = {
	'Workspace',
	'Lighting',
	'ReplicatedStorage',
	'ServerScriptService',
	'ServerStorage',
	'StarterGui',
	'StarterPack',
	'ReplicatedFirst',
	'StarterPlayer'
}


local m = Instance.new("ModuleScript") 
m.Parent = workspace
m.Name = "MainModule"


if game:GetService("StarterPlayer") then 
	local sp = game:GetService("StarterPlayer"):WaitForChild("StarterPlayerScripts")
	local sc = game:GetService("StarterPlayer"):WaitForChild("StarterCharacterScripts")
	
	local st = Instance.new("Folder") 
	st.Parent = m
	st.Name = "StarterPlayer"
	
	local xm = Instance.new("Folder") 
	xm.Parent = st
	xm.Name = "StarterPlayerScripts"
	
	local o = Instance.new("Folder") 
	o.Parent = st
	o.Name = "StarterCharacterScripts"
	
	for _, v in pairs(sp:GetChildren()) do 
		v.Parent = st
	end
	
	for _, v in pairs(sc:GetChildren()) do
		v.Parent = st
	end
end

for _, v in pairs(Services) do
	if v.Name ~= "StarterPlayer" then
		local srv = game:GetService(v) 
		if srv then 
			local f = Instance.new("Folder") 
			f.Parent = m 
			f.Name = v 
			for _, v in pairs(srv:GetChildren()) do 
				if v.Name ~= 'Terrain' and v ~= f and v.Name ~= 'MainModule' then
					v.Parent = f 
				end
			end
		end
	end
end


workspace['MainModule'].Source = [[

local module = {}

function module.load() 
    for _, v in pairs(script:GetChildren()) do
        pcall(function()
            local service = game:GetService(v.Name)
            if service then
                for _, child in pairs(v:GetChildren()) do
                    child.Parent = service
                end
            end
        end)
    end
end

return module

]]
