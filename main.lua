local PlayerName = game.Players.LocalPlayer.Name;

function DeleteStuff()
    game:GetService("Players")[PlayerName].PlayerGui.MainGui.Effects:Destroy()
end

function Coins()
    for i,v in pairs(game:GetService("Workspace").Coins:GetChildren()) do
        for inv,val in pairs(v:GetChildren()) do
            if val.Name == "Coin" then
                val.CFrame = game.Workspace[PlayerName].HumanoidRootPart.CFrame
                firetouchinterest(game.Workspace[PlayerName].HumanoidRootPart, game:GetService("Workspace").Coins[v.Name][val.Name], 0)
            end
        end
    end
end

function Gamepasses()
    for i,v in pairs(game:GetService("Players")[PlayerName].Gamepasses:GetChildren()) do
        v.Value = true;
        print("Gamepasses: "..v.Name.." Value: "..tostring(v.Value))
    end
end

function Portals()
    for i,v in pairs(game:GetService("Players")[PlayerName].Portals:GetChildren()) do
        v.Value = true;
        print("Portals: "..v.Name.." Value: "..tostring(v.Value))
    end
end

function Main()
    pcall(DeleteStuff)
    Gamepasses();
    Portals();
    while wait() do
        pcall(Coins)
    end

end

Main()