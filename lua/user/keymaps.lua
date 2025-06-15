-- General keymaps that are not pluggin dependant
-- the file "lua/lsp/utils.lua" contains lsp-specific commands.

local Utils = require("user.utils")
local opts = {noremap = true, silent = true}
local keymap = vim.keymap.set

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local nmap = Utils.nmap

-- cancel hlsearch with ESC
keymap('n', '<Esc>', '<cmd>nohlsearch<CR><Esc>', opts)

-- markdown 
nmap('<leader>rm', '<Plug>MarkdownPreviewToggle')

-- transparentToggle
keymap("n", "<leader>tt", ":TransparentToggle <CR>", opts)

--reize window
keymap("n", "<C-A-Down>", ":resize +2 <CR>", opts)
keymap("n", "<C-A-Up>", ":resize -2 <CR>", opts)
keymap("n", "<C-A-Right>", ":vertical resize -2 <CR>", opts)
keymap("n", "<C-A-Left>", ":vertical resize +2 <CR>", opts)

--navigate
keymap("n", "<leader>tn", ":tabnew <CR>", opts)
keymap("n", "<A-l>", ":tabnext <CR>", opts)
keymap("n", "<A-h>", ":tabprevious <CR>", opts)
keymap("n", "<A-.>", ":bnext <CR>", opts)
keymap("n", "<A-,>", ":bprevious <CR>", opts)

--mover la ventana de posición
keymap("n", "<leader>t-", "<ESC>:-tabmove<CR>", opts)
keymap("n", "<leader>t+", "<ESC>:+tabmove<CR>", opts)

--navigate split buffer
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)

--navigate to file and line Number
keymap("n", "<A-f>", "<C-w>F", opts)

-- move line
keymap("n", "<A-j>", "<ESC>:move .+1<CR>", opts)
keymap("n", "<A-k>", "<ESC>:move .-2<CR>", opts)

--move block line
keymap("x", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv=gv", opts)

-- move by lines in wrap text
keymap('n', 'j', 'v:count == 0 ? "gj": "j"', {expr = true, silent = true})
keymap('n', 'k', 'v:count == 0 ? "gk": "k"', {expr = true, silent = true})

-- Increment/decrement
keymap('n', '+', '<C-a>', opts)
keymap('n', '-', '<C-x>', opts)

-- Save with Ctrl + S
nnoremap("<space>w", "<cmd>:w!<CR>")
nnoremap("<space>x", "<cmd>:x!<CR>")

-- Close buffer
nnoremap("<space>q", "<cmd>:q!<CR>")

-- Delete buffer
nnoremap("<A-w>", ":bdelete!<CR>")

-- indent in visual mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Telescope keymaps
nnoremap("<leader>F", "<Cmd>Telescope find_files<CR>")
nnoremap("<leader>lg", "<Cmd>Telescope live_grep<CR>")
nnoremap("<leader>h", "<Cmd>Telescope current_buffer_fuzzy_find<CR>")
nnoremap("<leader>fb", "<Cmd>Telescope buffers<CR>")
nnoremap("<leader>c", "<Cmd>Telescope coc<CR>")
nnoremap("<leader>gs", "<Cmd>Telescope git_status<CR>")
nnoremap("<leader>gc", "<Cmd>Telescope conventional_commits<CR>")
nnoremap("<leader>k", "<Cmd>Telescope keymaps<CR>")
nnoremap("<leader>m", "<Cmd>Telescope marks<CR>")

-- search current word under cursor
keymap('n', '<leader>ll', function ()
    local word = vim.fn.expand("<cword>")
    local ext = vim.fn.expand("%:e")
    local pattern = '**/*.' .. ext

    vim.cmd('vimgrep /\\C\\<' .. word .. '\\>/j ' .. pattern)
    vim.cmd('copen')

end, {noremap = true, silent = true, desc = "Search word with case sensitive on files of the same kind"})

-- git keymaps
nnoremap("<space>ga", "<cmd>:Git add %<CR>")
nnoremap("<space>gp", "<Cmd>:Git push<CR>")
nnoremap("<space>gd", "<Cmd>:Git diff<CR>")
nnoremap("<space>gc", "<Cmd>:Git commit<CR>")

-- File explorer
nnoremap("<C-a>", "<Cmd>:NERDTreeToggle<CR>")  -- NvimTree
