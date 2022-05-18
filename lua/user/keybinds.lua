local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "



-- Left and right can switch buffers
keymap("n", "<left>", ":bp<cr>", opts)
keymap("n", "<right>", ":bp<cr>", opts)


-- Disable home row keys
keymap("", "<up>", "<nop>", opts)
keymap("", "<down>", "<nop>", opts)
keymap("", "<left>", "<nop>", opts)
keymap("", "<right>", "<nop>", opts)


-- Left and right can switch buffers
keymap("n", "<left>", ":bp<cr>", opts)
keymap("n", "<right>", ":bp<cr>", opts)


-- <leader><leader> switches between buffers
keymap("n", "<leader><leader>", "<c-^>", opts)


-- Ctrl+h to stop searching
keymap("v", "<C-h>", ":nohlsearch<cr>", opts)
keymap("n", "<C-h>", ":nohlsearch<cr>", opts)


-- Suspend with Ctrl+f
keymap("i", "<C-f>", ":sus<cr>", opts)
keymap("v", "<C-f>", ":sus<cr>", opts)
keymap("n", "<C-f>", ":sus<cr>", opts)


-- Jump to start and end of line using the home row keys
keymap("", "H", "^", opts)
keymap("", "L", "$", opts)


-- Unmap F1
keymap("", "<F1>", "<ESC>", opts)


-- copy / paste
keymap("n", "<leader>c", ":w !xsel -ib<cr><cr>", opts)
keymap("n", "<leader>p", ":read !xsel --clipboard --output<cr>:", opts)


-- proper search
keymap("n", "<silent> n", "nzz", opts)
keymap("n", "<silent> N", "Nzz", opts)
keymap("n", "<silent> *", "*zz", opts)
keymap("n", "<silent> #", "#zz", opts)
keymap("n", "<silent> g*", "g*zz", opts)



vim.cmd[[
nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>
" Very magic by default
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/
]]




-- disable / enable spellcheck
keymap("n", "<silent> <c-s>", ":set spell!<cr>", opts)


-- clear old searches
keymap("", "<c-c>", ":let @/ = ''<cr>", opts)


-- markdown preview
keymap("n", "<c-w>", ":MarkdownPreviewToggle<cr>", {})












