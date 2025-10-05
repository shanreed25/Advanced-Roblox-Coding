--this is a local script
--it runs on the client side

--get the GUI
local gui = script.Parent

--get the button from the GUI
local giveCoinsButton = gui:WaitForChild("GiveCoins")

--get the GiveCoins RemoteEvent
local giveCoinsEvent = game.ReplicatedStorage.GiveCoins


--when button is pressed, it will fire the event
giveCoinsButton.MouseButton1Click:Connect(function()
    --RemoteEvent:FireServer()
	giveCoinsEvent:FireServer()--fire the event to the server
    --.OnServerEvent:Connect() in the serverScript catches the event
    --the server will catch the event and add 20 coins to the player
	
end)

-- --if we want to pass arguments to the server script we can do it like this
-- giveCoinsButton.MouseButton1Click:Connect(function()
-- 	local coins = 20
-- 	--when we have a remote event we can give the FireServer function as many arguments as we like
-- 	--we can use these arguments in the server script to pass information from the client to the server
-- 	--player is automatically passed by the FireServer function, so we do not need to pass it here
-- 	giveCoinsEvent:FireServer(coins)

-- end)
-- --the first argument must be the player that fired the event
-- --any additional arguments can be anything we like
-- --we can use these additional arguments in the server script to pass information from the client to the server
-- --in this case we are passing the amount of coins to add to the player
-- --in the server script we can use this argument to add the specified amount of coins to the player
