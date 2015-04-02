sTitle = ""
_G.MyOS = {}
local w,h = term.getSize()
local old = term.current()
local tit = windows.create(old,1,1,w,1)
local pro = windows.create(old,1,2,w,h-1)
function _G.MyOS.setTaskbarTitle = function(_sTitle)
  local sTitle = _sTitle
  tit.setBackgroundColor(colors.lightGray)
  tit.clear()
  local w = tit.getSize()
  local x = (w - #sTitle) / 2
  tit.setTextColor(colors.gray)
  tit.write(sTitle)
end

pro.setBackgroundColor(colors.white)
pro.setTextColor(colors.black)
term.redirect(pro)
