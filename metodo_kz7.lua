--[[ 
===========================================
 MÉTODO KZ7 - SISTEMA COMPLETO PROFISSIONAL
 GUI moderna, animada, vermelha e preta
===========================================
]]--

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MetodoKZ7_ProPlus"
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false


--------------------------------------------
-- FUNDO ESCURECIDO
--------------------------------------------
local fundo = Instance.new("Frame")
fundo.Size = UDim2.new(1, 0, 1, 0)
fundo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fundo.BackgroundTransparency = 0.45
fundo.Parent = gui


--------------------------------------------
-- PAINEL PRINCIPAL
--------------------------------------------
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 0, 0, 0)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderSizePixel = 0
main.Parent = gui

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

local borda = Instance.new("UIStroke", main)
borda.Color = Color3.fromRGB(255, 0, 0)
borda.Thickness = 2


--------------------------------------------
-- ANIMAÇÃO DE ABERTURA
--------------------------------------------
task.spawn(function()
	for i = 0, 1, 0.05 do
		main.Size = UDim2.new(0, 450 * i, 0, 320 * i)
		main.BackgroundTransparency = 1 - i
		borda.Transparency = 1 - i
		task.wait(0.015)
	end
end)


--------------------------------------------
-- TÍTULO
--------------------------------------------
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 60)
title.BackgroundTransparency = 1
title.Text = "MÉTODO KZ7"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.Font = Enum.Font.GothamBlack
title.TextScaled = true
title.Parent = main


--------------------------------------------
-- ABAS SUPERIORES
--------------------------------------------
local tabs = Instance.new("Frame")
tabs.Size = UDim2.new(1, 0, 0, 50)
tabs.Position = UDim2.new(0, 0, 0, 60)
tabs.BackgroundTransparency = 1
tabs.Parent = main

local function CriarAba(nome, x)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0, 140, 1, 0)
	b.Position = UDim2.new(0, x, 0, 0)
	b.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
	b.Text = nome
	b.TextColor3 = Color3.fromRGB(255, 255, 255)
	b.Font = Enum.Font.GothamBold
	b.TextScaled = true
	b.Parent = tabs

	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 8)

	b.MouseEnter:Connect(function()
		b.BackgroundColor3 = Color3.fromRGB(70, 0, 0)
	end)

	b.MouseLeave:Connect(function()
		b.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
	end)

	return b
end

local abaFuncoes = CriarAba("Funções", 10)
local abaVisual = CriarAba("Visual", 160)
local abaCreditos = CriarAba("Créditos", 310)


--------------------------------------------
-- PAINÉIS DAS ABAS
--------------------------------------------
local function CriarPainel()
	local p = Instance.new("Frame")
	p.Size = UDim2.new(1, -20, 1, -130)
	p.Position = UDim2.new(0, 10, 0, 120)
	p.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	p.BorderSizePixel = 0
	p.Visible = false
	p.Parent = main

	Instance.new("UICorner", p).CornerRadius = UDim.new(0, 10)

	return p
end

local painelFuncoes = CriarPainel()
local painelVisual = CriarPainel()
local painelCreditos = CriarPainel()


local function MostrarPainel(x)
	painelFuncoes.Visible = false
	painelVisual.Visible = false
	painelCreditos.Visible = false

	x.Visible = true
end


--------------------------------------------
-- BOTÃO BASE PARA FUNÇÕES
--------------------------------------------
local function CriarBotao(parent, texto, posY)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(1, -40, 0, 55)
	b.Position = UDim2.new(0, 20, 0, posY)
	b.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
	b.Text = texto
	b.TextColor3 = Color3.fromRGB(255, 255, 255)
	b.Font = Enum.Font.Gotham
	b.TextScaled = true
	b.Parent = parent

	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 8)

	b.MouseEnter:Connect(function()
		b.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
	end)

	b.MouseLeave:Connect(function()
		b.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
	end)

	return b	
end


--------------------------------------------
-- FUNÇÕES (VOCÊ PERSONALIZA DEPOIS)
--------------------------------------------
local f1 = CriarBotao(painelFuncoes, "Função 1 - (adicione seu código)", 20)
f1.MouseButton1Click:Connect(function()
	print("Função 1 ativada!")
end)

local f2 = CriarBotao(painelFuncoes, "Função 2 - (adicione seu código)", 85)
local f3 = CriarBotao(painelFuncoes, "Função 3 - (adicione seu código)", 150)


--------------------------------------------
-- PAINEL VISUAL
--------------------------------------------
local visualTxt = Instance.new("TextLabel")
visualTxt.Size = UDim2.new(1, -40, 0, 60)
visualTxt.Position = UDim2.new(0, 20, 0, 20)
visualTxt.Text = "Ajustes visuais futuramente"
visualTxt.BackgroundTransparency = 1
visualTxt.TextColor3 = Color3.fromRGB(255, 0, 0)
visualTxt.Font = Enum.Font.GothamBold
visualTxt.TextScaled = true
visualTxt.Parent = painelVisual


--------------------------------------------
-- PAINEL CRÉDITOS
--------------------------------------------
local creditTxt = Instance.new("TextLabel")
creditTxt.Size = UDim2.new(1, -40, 0, 100)
creditTxt.Position = UDim2.new(0, 20, 0, 20)
creditTxt.BackgroundTransparency = 1
creditTxt.Text = "Método KZ7\nCriado por: Você\nInterface profissional"
creditTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
creditTxt.Font = Enum.Font.Gotham
creditTxt.TextScaled = true
creditTxt.Parent = painelCreditos


--------------------------------------------
-- ABRIR ABA INICIAL
--------------------------------------------
MostrarPainel(painelFuncoes)
