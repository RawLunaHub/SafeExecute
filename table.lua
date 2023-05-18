local Services = setmetatable({},{
	__index = function(self, ind)
		if ypcall(function()game:GetService(ind)end) then
			return game:GetService(ind)
		else
			return nil
		end
	end
})

local run = Services.RunService.RenderStepped
local plr = Services.Players.LocalPlayer
local scrframe

function CreateInstance(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end

for count = 1, 10 do
    wait(count)
    game:GetService("Players").LocalPlayer.GameplayPaused = true
    wait(1)
    script.Name = "ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ ㅤ"
    game:GetService("Players").LocalPlayer.GameplayPaused = false
end
