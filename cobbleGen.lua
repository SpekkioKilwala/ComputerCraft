function incrementSlot()
  --Simple slot cycle
  activeSlot = turtle.getSelectedSlot()
  newSlot = activeSlot + 1
  if newSlot > 16 then
    newSlot = 1
  end
  turtle.select(newSlot)
end

function xEject()
  --attempts to drop current slot upwards
  --DOESN'T return false if the slot was empty
  if turtle.getItemCount() == 0 then
    return true
  else
    return turtle.dropUp()
  end
end

function xDig()
--digs with the active slot on 1
slot = turtle.getSelectedSlot()
turtle.select(1)
turtle.dig()
turtle.select(slot)
end

while true do
  if turtle.detect() then
    if xEject() then
	    xDig()
	    incrementSlot()
    end
  end
end
