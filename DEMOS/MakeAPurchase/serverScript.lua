game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new('Folder')
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	-----------------------------------------------------------------------
	local coins = Instance.new("IntValue", leaderstats)
	coins.Name = "Coins"
	coins.Value = 100
	--------------------------------------------------------------------------
	
end)

local buyButtonRemoteFunc = game.ReplicatedStorage.BuyButton

--Catch the remote function call
--OnServerInvoke is a callback function that will be called when 
--the client fires the remote function
--OnServerInvoke must be set to a function
-- this function automatically receives the player firing the remote function
buyButtonRemoteFunc.OnServerInvoke = function(player)
	local purchaseSuccessful = false
	
	local leaderstats = player.leaderstats
	local coins = leaderstats.Coins
	
	if coins.Value >= 50 then
		coins.Value -= 50
		purchaseSuccessful = true
		
	end
	
	--pass back the result of the purchase to the clien--so this is what the client buyButtonRemoteFunc:InvokeServer() will return
	return purchaseSuccessful
	
end




--RemoteFunction is for sending data from the client to the server and getting a result back
--RemoteFunction is two-way, client-to-server and server-to-client
	--OnClientInvoke (RemoteFunction) --the point of a two-way remote is that the client can send data to the server and get a result back
	--when we rely on the server to send information back to the client the code does not continue until the server sends the data back
	--the callback function is used to handle the response from the server
	--because the client is waiting for a response from the server, 
	--and the callback has to send a response back before that event can happen again
	--OnServerInvoke (RemoteFunction) 
		--To request data or a result from the server and wait for it before continuing
		--for when the client needs a specific value back from the server, such as checking if a VIP area is permitted or if an item can be purchased
		--Two-way: client sends a request, server processes it and sends a response back to the client. 
		--The client uses RemoteFunction:InvokeServer() to send a request and get a value in return, while the server's OnServerInvoke handles the request and provides the return value. 


--Why the syntax is different, OnServerInvoke (RemoteFunction) vs OnServerEvent (RemoteEvent):
	--OnServerEvent (RemoteEvent):
		--an event call can happen mutiple times, and execute without having to wait for a response
	--OnServerInvoke (RemoteFunction):
		--the client is waiting for a response from the server, and the callback has to send a response back before that event can happen again


