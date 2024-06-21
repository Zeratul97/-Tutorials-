whiteListSerials = {
    ["serial"] = true, -- Serial akiket a rendszer fel engedhet a szerverre
}

function whiteListSerial(data)
   if (data) then
        if (whiteListSerials[data]) then
            return true
        else
           return false 
        end
   else
      return false  
   end
end
