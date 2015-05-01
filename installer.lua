local blacklist = {"installer.lua","README.md","LICENSE",".gitignore","doc"}

if not term.isColor() then return end
term.clear()
term.setCursorPos(5,5)
term.write("MyOS installing path: ")
path = read()
fs.delete(path.."/*")
term.clear()
term.setCursorPos(1,1)
shell.run("pastebin", "run", "VuBNx3va", "-u", "manumanucraft", "-r", "MyOS", path)

for k,v in ipairs(blacklist) do
  os.remove(path.."/"..v)
end
