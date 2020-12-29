local FXModule = {}

local TS = game:GetService("TweenService")

function FXModule:Glitch(Player, Time)
	local AllPlayers = nil
	
	if Player == nil then
		AllPlayers = true
	else
		AllPlayers = false
	end
	
	if Time == nil then
		Time = 1
	end
	
	if AllPlayers == false then
		if (tostring(Player) ~= nil) and (game.Players:FindFirstChild(Player)) then
			local plr = game.Players:FindFirstChild(Player)
			
			pcall(function()
				local gui = script.GlitchGui:Clone()
				gui.Parent = plr.PlayerGui
				gui.Name = "GlitchGui"
			end)
			
			wait(Time)
			
			plr.PlayerGui:FindFirstChild("GlitchGui"):Destroy()
		elseif (tonumber(Player) ~= nil) and (not game.Players:FindFirstChild(Player)) then
			local plr = game.Players:GetPlayerByUserId(Player)
			
			pcall(function()
				local gui = script.GlitchGui:Clone()
				gui.Parent = plr.PlayerGui
				gui.Name = "GlitchGui"
			end)
			
			wait(Time)
			
			plr.PlayerGui:FindFirstChild("GlitchGui"):Destroy()
		elseif Player.Parent == game.Players then
			pcall(function()
				local gui = script.GlitchGui:Clone()
				gui.Parent = Player.PlayerGui
				gui.Name = "GlitchGui"
			end)
			
			wait(Time)
			
			Player.PlayerGui:FindFirstChild("GlitchGui"):Destroy()
		else
			error("'Player' is not a Player instance, name, or UserId!")
		end
	elseif AllPlayers == true then
		for i, player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				local gui = script.GlitchGui:Clone()
				gui.Parent = player.PlayerGui
			end)
			
			wait(Time)
			
			player.PlayerGui:FindFirstChild("GlitchGui"):Destroy()
		end
	end
end

function FXModule:FadeBlack(Player, FadeTime, Time)
	local AllPlayers = nil
	
	if Player == nil then
		AllPlayers = true
	else
		AllPlayers = false
	end
	
	if FadeTime == nil then
		FadeTime = 0.5
	end
	
	if Time == nil then
		Time = 1
	end
	
	if AllPlayers == false then
		if (tostring(Player) ~= nil) and (game.Players:FindFirstChild(Player)) then
			local plr = game.Players:FindFirstChild(Player)
			
			pcall(function()
				local gui = script.BlackGui:Clone()
				gui.Parent = plr.PlayerGui
				gui.Name = "BlackGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			plr.PlayerGui:FindFirstChild("BlackGui"):Destroy()
		elseif (tonumber(Player) ~= nil) and (not game.Players:FindFirstChild(Player)) then
			local plr = game.Players:GetPlayerByUserId(Player)
			
			pcall(function()
				local gui = script.BlackGui:Clone()
				gui.Parent = plr.PlayerGui
				gui.Name = "BlackGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			plr.PlayerGui:FindFirstChild("BlackGui"):Destroy()
		elseif Player.Parent == game.Players then
			pcall(function()
				local gui = script.BlackGui:Clone()
				gui.Parent = Player.PlayerGui
				gui.Name = "BlackGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			Player.PlayerGui:FindFirstChild("BlackGui"):Destroy()
		else
			error("'Player' is not a Player instance, name, or UserId!")
		end
	elseif AllPlayers == true then
		for i, player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				local gui = script.BlackGui:Clone()
				gui.Parent = player.PlayerGui
				gui.Name = "BlackGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			player.PlayerGui:FindFirstChild("BlackGui"):Destroy()
		end
	end
end

function FXModule:FadeWhite(Player, FadeTime, Time)
	local AllPlayers = nil
	
	if Player == nil then
		AllPlayers = true
	else
		AllPlayers = false
	end
	
	if FadeTime == nil then
		FadeTime = 0.5
	end
	
	if Time == nil then
		Time = 1
	end
	
	if AllPlayers == false then
		if (tostring(Player) ~= nil) and (game.Players:FindFirstChild(Player)) then
			local plr = game.Players:FindFirstChild(Player)
			
			pcall(function()
				local gui = script.WhiteGui:Clone()
				gui.Parent = plr.PlayerGui
				gui.Name = "WhiteGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			plr.PlayerGui:FindFirstChild("WhiteGui"):Destroy()
		elseif (tonumber(Player) ~= nil) and (not game.Players:FindFirstChild(Player)) then
			local plr = game.Players:GetPlayerByUserId(Player)
			
			pcall(function()
				local gui = script.WhiteGui:Clone()
				gui.Parent = plr.PlayerGui
				gui.Name = "WhiteGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			plr.PlayerGui:FindFirstChild("WhiteGui"):Destroy()
		elseif Player.Parent == game.Players then
			pcall(function()
				local gui = script.WhiteGui:Clone()
				gui.Parent = Player.PlayerGui
				gui.Name = "WhiteGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			Player.PlayerGui:FindFirstChild("WhiteGui"):Destroy()
		else
			error("'Player' is not a Player instance, name, or UserId!")
		end
	elseif AllPlayers == true then
		for i, player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				local gui = script.WhiteGui:Clone()
				gui.Parent = player.PlayerGui
				gui.Name = "WhiteGui"
				
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 0}):Play()
				wait(FadeTime + Time)
				TS:Create(gui.Main, TweenInfo.new(FadeTime), {BackgroundTransparency = 1}):Play()
				wait(FadeTime)
			end)
			
			player.PlayerGui:FindFirstChild("WhiteGui"):Destroy()
		end
	end
end

return FXModule