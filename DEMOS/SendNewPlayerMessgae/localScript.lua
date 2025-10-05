--this is a local script
--it runs on the client side

--get the GUI
local gui = script.Parent

local greetPlayerEvent = game.ReplicatedStorage.GreetPlayer

--From Server to client
local grettingLabel = gui.Greeting
--when the player joins the game, tell the client to display a message
--OnClientEvent
--playeris not a required argument
greetPlayerEvent.OnClientEvent:Connect(function(message)
	grettingLabel.Text = message
end)
