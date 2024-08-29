require("lazy.lazy")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.background = "dark" 
vim.g.gruvbox_baby_function_style = "bold"
vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_telescope_mode = 1
vim.o.scrolloff = 8;
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block'
vim.cmd [[
  autocmd ColorScheme * highlight Visual guibg=#FFA726 guifg=#000000
]]


require('telescope').setup()

require('neoscroll').setup()

require('lualine').setup {
		options = {
				theme = 'gruvbox'
		}
}

require('nvim-treesitter.configs').setup {
		highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
		},
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

local cmp = require'cmp'


cmp.setup {
		snippet = {
				expand = function(args)
						vim.api.nvim_call_function("vsnip#anonymous", {args.body})
				end,
		},
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
['<C-y>'] = cmp.mapping.confirm({
behavior = cmp.ConfirmBehavior.Replace,
select = true,
}),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
}
cmp.setup.filetype("tex", {
sources = {
{ name = 'vimtex' },
{ name = 'buffer' },
},
})

vim.cmd("colorscheme gruvbox-baby")
