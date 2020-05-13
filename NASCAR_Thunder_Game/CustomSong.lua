--Created by: Chris Nosowsky

local UserInputService = game:GetService("UserInputService")
local LogService = game:GetService("LogService")

songInput = script.Parent

enter = Enum.KeyCode.Return

function isKeyEnter()
	return UserInputService:IsKeyDown(enter)
end

local function Input(input, gameProcessedEvent)
	if isKeyEnter() then
		id = songInput.Text
		soundObj = script.Parent.Parent.Parent.Parent.Parent.Custom
		soundObj.SoundId = "rbxassetid://"..id
		soundObj:Play()
	end
end

UserInputService.InputBegan:Connect(Input)

LogService.MessageOut:Connect(function(Message, Type)
	if Message == "Failed to load sound rbxassetid://"..id..": Unable to download sound data" then
		songInput.Text = "Not able to find sound id!"
	end
end)