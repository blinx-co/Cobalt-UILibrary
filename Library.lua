local lib = {}

lib["CreateWindow"] = function(title)
	local cobalt = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local mainlayout = Instance.new("UIListLayout")
	local maintitle = Instance.new("TextLabel")
	local maintitlepadding = Instance.new("UIPadding")
	local maintitle_close = Instance.new("ImageLabel")
	local maintitle_close_const = Instance.new("UIAspectRatioConstraint")
	local maintitle_close_button = Instance.new("TextButton")
	local WindowContainer = Instance.new("Frame")
	
	cobalt.Name = "cobalt"
	cobalt.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	cobalt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	WindowContainer.Name = "WindowContainer"
	WindowContainer.Parent = cobalt
	WindowContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WindowContainer.BackgroundTransparency = 1.000
	WindowContainer.Size = UDim2.new(1, 0, 1, 0)
	
	main.Name = "Main"
	main.Parent = WindowContainer
	main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	main.BorderSizePixel = 0
	main.ClipsDescendants = true
	main.Position = UDim2.new(0.334256053, 0, 0.173006147, 0)
	main.Size = UDim2.new(0, 216, 0, 290)
	main.Active = true
	main.Draggable = true

	mainlayout.Name = "mainlayout"
	mainlayout.Parent = main
	mainlayout.SortOrder = Enum.SortOrder.LayoutOrder

	maintitle.Name = "maintitle"
	maintitle.Parent = main
	maintitle.BackgroundColor3 = Color3.fromRGB(6, 6, 6)
	maintitle.BorderSizePixel = 0
	maintitle.Size = UDim2.new(0, 216, 0, 42)
	maintitle.Font = Enum.Font.Arial
	maintitle.Text = title or "Cobalt Window 1"
	maintitle.TextColor3 = Color3.fromRGB(231, 231, 231)
	maintitle.TextSize = 16.000
	maintitle.TextXAlignment = Enum.TextXAlignment.Left

	maintitlepadding.Name = "maintitlepadding"
	maintitlepadding.Parent = maintitle
	maintitlepadding.PaddingLeft = UDim.new(0, 10)

	maintitle_close.Name = "maintitle_close"
	maintitle_close.Parent = maintitle
	maintitle_close.BackgroundTransparency = 1.000
	maintitle_close.Position = UDim2.new(0.883495152, 0, 0.309523821, 0)
	maintitle_close.Size = UDim2.new(0, 15, 0, 156)
	maintitle_close.Image = "rbxassetid://7072719338"

	maintitle_close_const.Name = "maintitle_close_const"
	maintitle_close_const.Parent = maintitle_close

	maintitle_close_button.Name = "maintitle_close_button"
	maintitle_close_button.Parent = maintitle_close
	maintitle_close_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	maintitle_close_button.BackgroundTransparency = 1.000
	maintitle_close_button.Size = UDim2.new(1, 0, 1, 0)
	maintitle_close_button.Font = Enum.Font.SourceSans
	maintitle_close_button.Text = ""
	maintitle_close_button.TextColor3 = Color3.fromRGB(0, 0, 0)
	maintitle_close_button.TextSize = 14.000
	
	local script5 = Instance.new('LocalScript', maintitle_close_button)
	
	script5.Name = "CloseScript"
	local frame = main

	local open = true

	local function fire()
		if open == true then
			open = false
			game:GetService("TweenService"):Create(frame, TweenInfo.new(.1), {Size = UDim2.new(0, 216,0, 42)}):Play()
		elseif open == false then
			open = true
			game:GetService("TweenService"):Create(frame, TweenInfo.new(.1), {Size = UDim2.new(0, 216,0, 165)}):Play()
		end
	end
	
	maintitle_close_button.MouseButton1Click:Connect(fire)
	
	local button = {}
	
	button["CreateButton"] = function(text, callback)
		local Button = Instance.new("Frame")
		local buttontitle = Instance.new("TextLabel")
		local buttontitlepadding = Instance.new("UIPadding")
		local buttonmain = Instance.new("TextButton")
		local buttonsignal = Instance.new("Frame")
		
		local callback = callback or function() end
		
		Button.Name = "Button"
		Button.Parent = main
		Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0, 0, 0.25454545, 0)
		Button.Size = UDim2.new(0, 216, 0, 30)

		buttontitle.Name = "buttontitle"
		buttontitle.Parent = Button
		buttontitle.BackgroundColor3 = Color3.fromRGB(6, 6, 6)
		buttontitle.BackgroundTransparency = 1.000
		buttontitle.BorderSizePixel = 0
		buttontitle.Size = UDim2.new(1, 0, 1, 0)
		buttontitle.Font = Enum.Font.Arial
		buttontitle.Text = text
		buttontitle.TextColor3 = Color3.fromRGB(231, 231, 231)
		buttontitle.TextSize = 13.000
		buttontitle.TextXAlignment = Enum.TextXAlignment.Left

		buttontitlepadding.Name = "buttontitlepadding"
		buttontitlepadding.Parent = buttontitle
		buttontitlepadding.PaddingLeft = UDim.new(0, 10)
		
		-- Button Scripts
		local scripts = Instance.new('LocalScript', buttonmain)
		scripts.Name ="FireSignal"
			
		local signal = buttonsignal

		local function Fire()
			game:GetService("TweenService"):Create(signal, TweenInfo.new(.2), {BackgroundTransparency = 0}):Play()
			game:GetService("TweenService"):Create(signal, TweenInfo.new(.2), {Size = UDim2.new(1,0,0,1)}):Play()
			wait(.2)
			game:GetService("TweenService"):Create(signal, TweenInfo.new(.2), {BackgroundTransparency = 1}):Play()
			wait(.1)
			game:GetService("TweenService"):Create(signal, TweenInfo.new(.2), {Size = UDim2.new(0,0,0,1)}):Play()
		end
		
		local function pc(func)
			pcall(func)
		end
		
		buttonmain.Name = "buttonmain"
		buttonmain.Parent = Button
		buttonmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		buttonmain.BackgroundTransparency = 1.000
		buttonmain.Size = UDim2.new(1, 0, 1, 0)
		buttonmain.Font = Enum.Font.SourceSans
		buttonmain.Text = ""
		buttonmain.TextColor3 = Color3.fromRGB(0, 0, 0)
		buttonmain.TextSize = 14.000
		buttonmain.MouseButton1Click:Connect(Fire)
		buttonmain.MouseButton1Click:Connect(pc(callback))

		buttonsignal.Name = "buttonsignal"
		buttonsignal.Parent = Button
		buttonsignal.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
		buttonsignal.BorderSizePixel = 0
		buttonsignal.Position = UDim2.new(0, 0, 0.999999464, 0)
		buttonsignal.Size = UDim2.new(0, 0, 0, 1)
	end
	return button
end

return lib
