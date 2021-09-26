function _G.dump(...)
	local objects = vim.tbl_map(vim.inspect, {...})
	print(unpack(objects))
end

-- helper functions --
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

local scopes = { o = vim.o, b = vim.bo, w = vim.wo }
local function opts(scope, key, value)
	scopes[scope][key] = value
	if scope ~= 'o' then scopes['o'][key] = value end
end

local indent = 2;

--  general settings
g.mapleader = ','
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.showmatch = true
opt.foldmethod = 'marker'
opt.colorcolumn = '80'

-- set colorscheme
-- colorscheme onedark
-- cmd 'colorscheme onedark'
-- cmd 'colorscheme palenight'
cmd 'colorscheme ayu'
-- cmd 'colorscheme gruvbox'
-- cmd 'colorscheme vim-one'
-- cmd 'colorscheme oceanic-next'

g['lightline'] = {colorscheme = 'one'}

-- local to buffer optsions --
opts('b', 'tabstop', indent)
opts('b', 'softtabstop', indent)
opts('b', 'shiftwidth', indent)
opts('b', 'expandtab', true)
opts('b', 'smartindent', true)
opts('b', 'swapfile', false)

-- local to window optsions --
opts('w', 'signcolumn', 'yes')
opts('w', 'number', true)
opts('w', 'relativenumber', false)
opts('w', 'list', true)
opts('w', 'wrap', true)

-- global optsions --
opts('o', 'hlsearch', true)
opts('o', 'incsearch', true)
opts('o', 'hidden', true)
opts('o', 'errorbells', false)
opts('o', 'completeopt', 'menuone,noinsert,noselect')
opts('o', 'ignorecase', true)
opts('o', 'smartcase', true)
opts('o', 'splitbelow', true)
opts('o', 'splitright', true)
opts('o', 'termguicolors', true)
opts('o', 'wildmode', 'list:longest')
opts('o', 'backup', false)
opts('o', 'undodir', '/home/geertje/.local/share/nvim/undodir')
opts('o', 'undofile', true)
opts('o', 'scrolloff', 8)
opts('o', 'sidescrolloff', 8)
opts('o', 'joinspaces', false)
opts('o', 'showmode', false)
opts('o', 'background', 'dark')

-- mappings --
--local vimp = require('vimp')
--vimp.bind('nvo', 'Y', 'y$')

-- don't auto commenting new lines
cmd[[au BufEnter * set fo-=c fo -=r fo-=o]]

-- remove line length marker for selected filetypes
cmd[[autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0]]

--2 spaced for selected filetypes
cmd[[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,python setlocal shiftwidth=2 tabstop=2
]]

-- Indentline
-- g.indentLine_setColors = 0
g.intentLine_char = '|'

-- disable IndentLine for markdown files (avoid concealing)
cmd[[autocmd FileType markdown let g:indentLine_enabled=0]]

