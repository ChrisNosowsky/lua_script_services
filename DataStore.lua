

local DataStoreService = game:GetService("DataStoreService")

local myDataStore = DataStoreService:GetDataStore("myDataStore")


--myDataStore:SetAsync(ID,350)	--save

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local cash = Instance.new("IntValue")
	cash.Name = "Cash"
	cash.Parent = leaderstats
	
	--getting the data
	local data
	local success, errormessage = pcall(function()
		data = myDataStore:GetAsync(player.UserId.."-cash")
	end)
	
	if success then
		print("hiya")
		cash.Value = data
	else		
		print("There was an error getting data")
		warn(errormessage)
	end
	
end)

game.Players.PlayerRemoving:Connect(function(player)
	--saving the data
	local success, errormessage = pcall(function()
		myDataStore:SetAsync(player.UserId.."-cash",player.leaderstats.Cash.Value)
	end)
	
	if success
	then
		print('Player data successfully saved!')
	else
		print("There was an error")
		warn(errormessage)
	end
	
end)
