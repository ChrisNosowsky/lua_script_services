game.ReplicatedFirst:RemoveDefaultLoadingScreen()


local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

PlayerGui:SetTopbarTransparency(0)

local GUI = script.LoadingScreen:Clone()
GUI.Parent = PlayerGui
local t = 0
repeat
	GUI.Frame.TextLabel.Text = "Loading"
	wait(0.5)
	GUI.Frame.TextLabel.Text = "Loading."
	wait(0.5)
	GUI.Frame.TextLabel.Text = "Loading.."
	wait(0.5)
	GUI.Frame.TextLabel.Text = "Loading..."
	wait(0.5)
	t = t + 1
until t == 2


GUI.Frame:TweenPosition(UDim2.new(0,0,1,0), "InOut", "Sine",0.5)
wait(0.5)

GUI:Destroy()