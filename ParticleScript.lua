
local button = script.Parent
local smoke =  script.Parent.Parent.Smoked1
-- Asset ID of the image you want the to set the cursor to
local CursorId = "2287179355"
 
-- Create a ClickDetector
local ClickDetector = Instance.new("ClickDetector")
ClickDetector.Parent = button
ClickDetector.MaxActivationDistance = 10
ClickDetector.CursorIcon = "rbxassetid://"..CursorId

ClickDetector.MouseClick:Connect(function()
	smoke.ParticleEmitter.Enabled = not smoke.ParticleEmitter.Enabled
	if smoke.ParticleEmitter.Enabled then
		script.Parent.SurfaceGui.TextLabel.Text = "ON"
		script.Parent.SurfaceGui.TextLabel.TextColor3 = Color3.fromRGB(47,255,15)
	else
		script.Parent.SurfaceGui.TextLabel.Text = "OFF"
		script.Parent.SurfaceGui.TextLabel.TextColor3 = Color3.fromRGB(255,5,30)
	end
	
	print("clicked")
end)