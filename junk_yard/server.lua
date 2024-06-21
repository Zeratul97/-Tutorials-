local junkYardMarker = createMarker(-2416.84595, -607.61456, 132.56250, "checkpoint", 2, 255, 0, 0, 200)
setElementData(junkYardMarker, "marker >> junkYard", true)
setElementDimension(junkYardMarker, 0) -- Markert a 0-dik dimenzióba helyezzük

addEventHandler("onMarkerHit", getRootElement(),
	function(element, mDim)
		if (getElementData(source, "marker >> junkYard") ) then -- A markert azonosítjuk, amibe a játékos belelép
			if (isElement(element)) then
				if (mDim == getElementDimension(element)) then -- Ellenőrizzük hogy a marker és az elem(pl.: Jármű, Játékos, Object) dimenziója ugyan az -e
					if (getElementType(element) == "vehicle") then	-- Ha az elem jármű akkor fut le
						if not (getElementData(element, "vehicle >> rent") or not getElementData(element, "vehicle >> faction") or not getElementData(element, "vehicle >> job")) then
							setElementData(element, "vehicle >> car", false) -- Jármű típusa sima autó akkor letiltja a jármű adatát 
							destroyElement(element) -- megsemmisíti a járművet
						else
							outputChatBox("Ezt a járművet nem tudod leadni!") -- Hiba üzenet a chatbox-ba
						end
					end
				end
			end
		end
	end
)
