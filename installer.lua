if not term.isColor() then return end
term.clear()
term.setCursorPos(20,7)
term.write("Windows 10")
function white(x,y)
  paintutils.drawPixel(x,y,colors.white)
end
function black(x,y)
  paintutils.drawPixel(x,y,colors.black)
end

white(25,9)
white(23,11)
white(27,11)
white(22,13)
white(28,13)
white(23,15)
white(27,15)
sleep(.1)
white(25,17)
black(27,15)
sleep(.1)
white(27,15)
black(28,13)
