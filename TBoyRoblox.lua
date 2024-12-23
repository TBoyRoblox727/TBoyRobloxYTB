local player = game.Players.LocalPlayer
local character = player.Character
local workspace = game:GetService("Workspace")
local replicatedStorage = game:GetService("ReplicatedStorage")

-- Hàm tự động tấn công
local function autoAttack()
    while true do
        replicatedStorage.Events.AttackEvent:FireServer()
        wait(0.1)
    end
end

-- Hàm tự động nhặt trái cây
local function autoFarmFruits()
    while true do
        for _, fruit in pairs(workspace:GetDescendants()) do
            if fruit.Name == "Fruit" then
                character.HumanoidRootPart.CFrame = fruit.CFrame
                wait(0.1)
            end
        end
    end
end

-- Hàm tự động sử dụng kỹ năng
local function autoUseSkills()
    while true do
        replicatedStorage.Events.UseSkillEvent:FireServer(1)
        wait(5)
    end
end

-- Hàm tự động mua sắm vật phẩm
local function autoBuyItems()
    while true do
        replicatedStorage.Events.BuyItemEvent:FireServer("Item1")
        wait(10)
    end
end