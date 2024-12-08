addEventHandler("onPlayerJoin", getRootElement(),
    function()
        local whiteSerial = exports["whitelist"]:getWhiteSerials(source) -- Hivatkozunk a 'global.lua' fájlban lévő funkcióra, "whitelist" helyére az általatok létrehozott mappát kell írni
        if not (whiteSerial) then
            kickPlayer(source, "Fejlesztés/Karbantartás folyik a szerveren!!!!")
         end
    end
)
