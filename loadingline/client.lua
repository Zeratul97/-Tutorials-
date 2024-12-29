local screenX, screenY = guiGetScreenSize() -- MTA felbontás lekérdezése(kirajzolás miatt)
local isLoadingLineShowing = true -- Látszódik-e a betöltési folyamat
local loadingNumber = 0 -- Töltés folyamatát befolyásoló változó

addEventHandler("onClientRender", getRootElement(),
    function()
       if (isLoadingLineShowing) then
           dxDrawRectangle(screenX/2, screenY/2, 500, 40, tocolor(0, 0, 0, 200), false)
           dxDrawRectangle(screenX/2+5, screenY/2+5, loadingNumber, 30, tocolor(200, 0, 0, 200), false)
           if (loadingNumber < 490) then
               loadingNumber = loadingNumber + 1
           else
               loadingNumber = 0
               isLoadingLineShowing = false
           end
       end
    end
)
