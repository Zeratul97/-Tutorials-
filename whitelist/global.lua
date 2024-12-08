whiteListSerials = {
    ["serial"] = true, -- Ide a "serial" helyére írjuk be azokat a serial-kat, akik fel léphetnek a szerverünkre.
    ["serial"] = true, -- Ide a "serial" helyére írjuk be azokat a serial-kat, akik fel léphetnek a szerverünkre.
}

function getWhiteSerials(player)
    if (player) then
        if (whiteListSerials[getPlayerSerial(player)]) then
            return true        
        else
            return false
        end
    else
        return false
    end
end
