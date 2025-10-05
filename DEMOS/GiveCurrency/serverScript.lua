--this is a server script
--it runs on the server side


local function addPlayerStats(player)
	local leaderstats = Instance.new('Folder')
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	-----------------------------------------------------------------------
	local coins = Instance.new("IntValue")
	coins.Name = "Coins"
	coins.Value = 100
	--------------------------------------------------------------------------

	coins.Parent = leaderstats

end

game.Players.PlayerAdded:Connect(addPlayerStats)


--:FireServer() sends the event to the serverScript
--.OnServerEvent:Connect() catches the event from the client
	--cathes the event from the client(LocalScript in ScreenGUI, .FireServer())
	--first argument must be the player that fired the event
giveCoinsEvent.OnServerEvent:Connect(function(player)--automatically gets the player that fired the event

	--get the player's coins
	local leaderstats = player.leaderstats
	local coins = leaderstats.Coins

	--add 20 coins to the player
	coins.Value += 20
end)


-- --if we want to accept arguments to the local script we can do it like this
-- --the FireServer function can pass as many arguments as we like
-- -- player and coinsAmount come from the client script
-- --the player argument must be first
-- --player is automatically passed by the FireServer function
-- giveCoinsEvent.OnServerEvent:Connect(function(player, coinsAmount)--coinsAmount is the argument we pass from the client	

-- 	local leaderstats = player.leaderstats
-- 	local coins = leaderstats.Coins
-- 	coins.Value += coinsAmount
-- end)