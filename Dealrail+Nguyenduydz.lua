-- Nguyenduydz Full Mini Script

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "NguyenduydzUI"

-- ================= NÚT NGOÀI =================
local openBtn = Instance.new("TextButton", gui)
openBtn.Size = UDim2.new(0, 100, 0, 35)
openBtn.Position = UDim2.new(0.02, 0, 0.3, 0)
openBtn.Text = "Nguyenduydz"
openBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
openBtn.TextColor3 = Color3.new(1,1,1)
openBtn.Active = true
openBtn.Draggable = true

-- ================= MENU =================
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 170, 0, 150)
frame.Position = UDim2.new(0.15, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.Visible = false
frame.Active = true
frame.Draggable = true

Instance.new("UICorner", frame).CornerRadius = UDim.new(0,10)

-- Tiêu đề
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,25)
title.Text = "Nguyenduydz"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.TextScaled = true

-- ================= VÒNG TRÒN XANH =================
local circle = Instance.new("Frame", gui)
circle.Size = UDim2.new(0,100,0,100)
circle.Position = UDim2.new(0.5,-50,0.5,-50)
circle.BackgroundTransparency = 1
circle.Visible = false

Instance.new("UICorner", circle).CornerRadius = UDim.new(1,0)

local stroke = Instance.new("UIStroke", circle)
stroke.Color = Color3.fromRGB(0,170,255)
stroke.Thickness = 3

-- ================= AIMBOT =================
local aimbotBtn = Instance.new("TextButton", frame)
aimbotBtn.Size = UDim2.new(1,-10,0,30)
aimbotBtn.Position = UDim2.new(0,5,0,35)
aimbotBtn.Text = "Aimbot: OFF"
aimbotBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
aimbotBtn.TextColor3 = Color3.new(1,1,1)

local aimbotOn = false

aimbotBtn.MouseButton1Click:Connect(function()
    aimbotOn = not aimbotOn
    
    if aimbotOn then
        aimbotBtn.Text = "Aimbot: ON"
        circle.Visible = true -- demo bật vòng tròn
    else
        aimbotBtn.Text = "Aimbot: OFF"
        circle.Visible = false
    end
end)

-- ================= CAMERA AIM =================
local camBtn = Instance.new("TextButton", frame)
camBtn.Size = UDim2.new(1,-10,0,30)
camBtn.Position = UDim2.new(0,5,0,75)
camBtn.Text = "Camera Aim: OFF"
camBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
camBtn.TextColor3 = Color3.new(1,1,1)

local camOn = false

camBtn.MouseButton1Click:Connect(function()
    camOn = not camOn
    
    if camOn then
        camBtn.Text = "Camera Aim: ON"
        print("Camera aim bật (demo)")
    else
        camBtn.Text = "Camera Aim: OFF"
    end
end)

-- ================= MỞ MENU =================
openBtn.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
end)