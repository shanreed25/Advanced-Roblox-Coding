
local buyButtonRemoteFunc = game.ReplicatedStorage.BuyButton

local gui = script.Parent

local prompt = gui.Prompt

local buyButton = gui.BuyButton

buyButton.MouseButton1Click:Connect(function()
	
	--InvokeServer will return the value of the function on the server
	local purchaseSuccessful = buyButtonRemoteFunc:InvokeServer()
	
	if purchaseSuccessful then
		prompt.Text = "Purchase SUCCESSFUL!"
		prompt.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	else
		prompt.Text = "Purchase FAILED!"
		prompt.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
	
end)