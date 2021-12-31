-- Treesitter
require'nvim-treesitter.configs'.setup{
	highlight = {
		enable = true,
	  additional_vim_regex_highlighting = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {"yaml"},
	},
	ensure_installed = "maintained",
}

