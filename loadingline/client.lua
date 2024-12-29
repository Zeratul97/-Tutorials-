local screenX, screenY = guiGetScreenSize() -- MTA felbontás lekérdezése(kirajzolás miatt)
local isLoadingLineShowing = true -- Látszódik-e a betöltési folyamat
local loadingNumber = 0 -- Töltés folyamatát befolyásoló változó

addEventHandler("onClientRender", getRootElement(),
    function()
       if (isLoadingLineShowing) then
            -- Csík háttere --
           dxDrawRectangle(screenX/2, screenY/2, 500, 40, tocolor(0, 0, 0, 200), false)
           -- Csík --
           dxDrawRectangle(screenX/2+5, screenY/2+5, loadingNumber, 30, tocolor(200, 0, 0, 200), false)
           if (loadingNumber < 490) then -- Ha kissebb a 'loadingNumber' értéke, mint 490 akkor
               loadingNumber = loadingNumber + 1 -- a 'loadingNumber' értékéhez hozzá adunk 1-et
           else -- Egyébként ha ugyan annyi vagy több akkor
               loadingNumber = 0 -- Vissza állítjuk 0-ra
               isLoadingLineShowing = false -- Eltüntetjük a betöltő csíkot
           end
       end
    end
)
