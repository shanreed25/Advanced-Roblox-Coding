--this is a server script
--it runs on the server side
local greetPlayerEvent = game.ReplicatedStorage.GreetPlayer

local function sendPlayerGreeting(player)
	local message = "Hello, "..player.Name
	--From Server to client
	--when the player joins the game, tell the client to display a message
	--RemoteEvent:FireClient()
	--player is a required argument
	greetPlayerEvent:FireClient(player, message)--fire the event to the client
	--.OnServerEvent:Connect() in the serverScript catches the event
	--the server will catch the event and add 20 coins to the player

end

game.Players.PlayerAdded:Connect(sendPlayerGreeting)


