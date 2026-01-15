RegisterCommand("clearweapons", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("All weapons removed.")
end)

Citizen.CreateThread(function()
    local h_key = 74 -- H key
    local x_key = 73 -- X key
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_key) then
            print("The key "..h_key.." was pressed")
            give_weapon("WEAPON_PISTOL")
            notify("You have been given a pistol.") 
            give_weapon("WEAPON_KNIFE")
            notify("You have been given a knife.")
            alert("~b~Guns Loaded with ~INPUT_VEH_HEADLIGHT~")
        end
    end

end)