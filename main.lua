local PlayerName = game.Players.LocalPlayer.Name;

function Coins()
    
end

function Gamepasses()
    for i,v in pairs(game:GetService("Players")[PlayerName].Gamepasses:GetChildren()) do
        v.Value = true;
        print("Gamepasses: "..v.Name.." Value: "..tostring(v.Value))
    end
end

function Portals()
    
end

function Main()
    
end

Main()