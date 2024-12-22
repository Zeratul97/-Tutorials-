-- Fejleszők serial-jai: --
devSerials = {
    ["ide írd a serial-od"] = true,
}
-- Tiltott parancsok --
disabledCommands = {
    ["login"] = true,
    ["register"] = true,
}

-- Fejlesztői parancsok --
developerCommands = {
    ["start"] = true,
    ["stop"] = true,
    ["restart"] = true,
    ["refresh"] = true,
    ["debugscript"] = true,
}

function isPlayerDeveloper(player)
    if (player) then
         if (devSerial[getPlayerSerial(player)]) then
             return true
         else
             return false
         end
    else
         return false
    end
end

-- Le ellenőrizzük hogy a tilott parancsok listjában szerepel-e a parancs: --
function isCommandDisabled(cmd)
    if (cmd) then
         if (disabledCommands[cmd]) then
             return true
         else
             return false
         end
    else
         return false
    end
end

-- Le ellenőrizzük hogy a fejlesztői parancsok listájában szerepel-e a parancs: --
function isDeveloperCommands(cmd)
    if (cmd) then
         if (developerCommands[cmd]) then
             return true
         else
             return false
         end
    else
         return false
    end
end
