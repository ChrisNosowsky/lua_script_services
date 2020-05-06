--Created by: Chris Nosowsky
local descendants = workspace:GetDescendants()
local toggled
local toggled2

local function changeTime(timeOD)

	for index, descendant in pairs(descendants) do
		if descendant:IsA("PointLight") or descendant:IsA("SpotLight") then
			print(descendant.Parent.Name)
			if not (descendant.Parent.Name == "ShopLight") then
				print(descendant.Parent)
				descendant.Enabled = not descendant.Enabled	
			end
		end
	end	
end

while true do
	wait()
	if game.Lighting.ClockTime > 17.5 and game.Lighting.ClockTime < 17.6 then
		if not toggled then
			changeTime(math.floor(game.Lighting.ClockTime))
			toggled = true
			toggled2 = false
		end
		
	elseif game.Lighting.ClockTime > 6.2 and game.Lighting.ClockTime < 6.3 then
		if not toggled2 then
			changeTime(math.floor(game.Lighting.ClockTime))
			toggled2 = true
			toggled = false
		end
		
	end	
end