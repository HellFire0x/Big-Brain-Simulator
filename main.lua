--[[
    [Information]:
        Made By HellFire0x
        Script as of [8/27/2020]
]]
--[[
    [Settings]:
        _G.DeleteCoinAnymation [false/true] | Info: if you turn on it will break a game script | normal: false
        _G.DisableCoins [false/true] | normal: true
]]
getgenv().DeleteCoinAnymation = false
getgenv().DisableCoins = true

--Locals :
local PlayerName = game.Players.LocalPlayer.Name

--Scripts :
function DeleteStuff()
    if getgenv().DeleteCoinAnymation == true then
        game:GetService("Players")[PlayerName].PlayerGui.MainGui.Effects:Destroy()
    end
end

function Coins()
    for i, v in pairs(game:GetService("Workspace").Coins:GetChildren()) do
        for inv, val in pairs(v:GetChildren()) do
            if val.Name == "Coin" then
                firetouchinterest(
                    game.Workspace[PlayerName].HumanoidRootPart,
                    game:GetService("Workspace").Coins[v.Name][val.Name],
                    0
                )
            end
        end
    end
end

function Gamepasses()
    for i, v in pairs(game:GetService("Players")[PlayerName].Gamepasses:GetChildren()) do
        v.Value = true
        print("Gamepasses: " .. v.Name .. " Value: " .. tostring(v.Value))
    end
end

function Portals()
    for i, v in pairs(game:GetService("Players")[PlayerName].Portals:GetChildren()) do
        v.Value = true
        print("Portals: " .. v.Name .. " Value: " .. tostring(v.Value))
    end
end

function Main()
    pcall(DeleteStuff)
    Gamepasses()
    Portals()
    if getgenv().DisableCoins == false then
        while wait() do
            pcall(Coins)
        end
    end
end

Main()
