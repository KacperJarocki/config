local setup, bar = pcall(require,"lualine")
if not setup then 
  return
end

bar.setup()
