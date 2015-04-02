os.loadAPI("/AppData/APIs/graphics")
MyOS.setTaskbarTitle("MyOS booting")

function os.version()
  return "MyOS 1.00"
end
local t = term.current()
t.setBackgroundColor(colors.white)
t.clear()
t.setTextColor(colors.gray)
t.setCursorPos(15,9)
t.write("Press a key for Boot Options")
t.setCursorPos(15,11)
t.setBackgroundColor(colors.lightGray)
t.write(string.rep(" ",20))
parallel.waitForAny(function()
  t.setCursorPos(15,11)
  t.setBackgroundColor(colors.gray)
  for i = 1,20 do
    t.write(" ")
    sleep(.1)
  end
end,function() os.pullEvent("key") options = true end)
if options then
  shell.run("/AppData/System/AltBoot.lua")
end

