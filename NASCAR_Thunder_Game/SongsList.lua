--Created by: Chris Nosowsky
local SoundService = game:GetService("SoundService")
soundPlayerCheck = false
local songClick = false
song1 = script.Parent.Play1
song2 = script.Parent.Play2
song3 = script.Parent.Play3

local function playLocalSound(soundId, clickStatus, name)
	if not soundPlayerCheck then
		soundPlayerCheck = true
		songClick = true
		PlayPause(name, true)
		
		-- Create a sound
		sound = script.Parent.Parent.Parent.Parent.Song1
		sound.SoundId = soundId
		-- Play the sound locally
		sound:Play()
		sound.Ended:Wait()
		soundPlayerCheck = false
	end
	if soundId == sound.SoundId then
		if not clickStatus then
			sound:Pause()
			PlayPause(name, false)
			soundPlayerCheck = false
		end
		
		if soundPlayerCheck and clickStatus then
			sound:Play()
			PlayPause(name, true)
			soundPlayerCheck = true
		end
	else
		sound:Stop()
		soundPlayerCheck = true
		songClick = true
		PlayPause(name, true)
		-- Create a sound
		sound = script.Parent.Parent.Parent.Parent.Song1
		sound.SoundId = soundId
		sound:Play()
		sound.Ended:Wait()
		soundPlayerCheck = false	
	end

	
end


function PlayPause(name, played)
	if played then
		if name == "Play1" then
			script.Parent.Play1.Image = "rbxgameasset://Images/pause (1)"
		end
		if name == "Play2" then
			script.Parent.Play2.Image = "rbxgameasset://Images/pause (1)"
		end
		if name == "Play3" then
			script.Parent.Play3.Image = "rbxgameasset://Images/pause (1)"
		end
	else
		if name == "Play1" then
			script.Parent.Play1.Image = "rbxgameasset://Images/playIcon"
		end
		if name == "Play2" then
			script.Parent.Play2.Image = "rbxgameasset://Images/playIcon"
		end
		if name == "Play3" then
			script.Parent.Play3.Image = "rbxgameasset://Images/playIcon"
		end
	end

end


song1.MouseButton1Click:Connect(function()
	songClick = not songClick
	playLocalSound("rbxassetid://132916816", songClick, "Play1")
end)


song2.MouseButton1Click:Connect(function()
	songClick = not songClick
	playLocalSound("rbxassetid://3029941884", songClick, "Play2")
end)


song3.MouseButton1Click:Connect(function()
	songClick = not songClick
	playLocalSound("rbxassetid://281581259", songClick, "Play3")
end)



