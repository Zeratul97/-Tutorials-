addEventHandler("onPlayerJoin", getRootElement(),
	function()
    	local serial = exports["whitelist"]:whiteListSerial(getPlayerSerial(source)) -- Mappából exportáljuk a létrehozott funkciót
      	if not (serial) then
       		  kickPlayer(source, "Fejlesztés/Karbantartás folyik a szerveren!!!!")
        end
    end
)
