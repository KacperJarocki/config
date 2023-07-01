local setup, builtin = pcall(require, "alpha-nvim")
if not setup then
	return
end
builtin.setup()
