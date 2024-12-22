-- Parancsok korlátozása, csak szerver oldalon létrehozott parancsokat veszi figyelembe: --
addEventHandler("onPlayerCommand", getRootElement(),
    function(cmd)
        local disCommand = exports["newmta_dev"]:isCommandDisabled(cmd) -- Ellenőrizzük hogy tiltva van-e a parancs
        if (disCommand) then -- Ha szerepel a listában a parancs akkor
            cancelEvent() --Töröljük az eseményt(nem működik a tiltott parancs)
        else
            local developerCMD = exports["newmta_dev"]:isDeveloperCommands(cmd) --Ellenőrizzük hogy fejlesztői parancs-e a parancs
            if (playerSerialDev) then -- Ha szerepel akkor
                local playerSerialDev = exports["newmta_dev"]:isPlayerDeveloper(source) -- Lekérdezzük hogy fejlesztő-e a parancsot használó játékos
                if not (playerSerialDev ) then -- Ha nem fejlesző akkor 
                   cancelEvent() --Töröljük az eseményt(nem működik a fejlesztői parancs)         
                end
            end
        end
    end
)
