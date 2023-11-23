-- We define the leader map
vim.g.mapleader = " "
---Define the mapleader
local keymap = vim.keymap -- for conciseness
local opts = { silent = true, noremap = true }
-- This keybinding use JK as the scape key, to exit a mode
vim.api.nvim_set_keymap("i", "jk","<ESC>", opts)

-- This keymap clears search
keymap.set("n", "<leader>h", ":nohl<CR>", opts, { desc = "Clean the history search"})
keymap.set("n", "<leader>rr", "<cmd>source %<CR>", { desc = "Execute the current path"})

keymap.set('n', '>', '>gv', { desc = "After tab in re-select the same"})
keymap.set('n', '>', '<gv', { desc = "After tab out re-select the same"})

keymap.set('n', 'n', 'nzzzv', { desc = "Goes to the next result on the search and put the cursor in the middle"})
keymap.set('n', 'N', 'Nzzzv', { desc = "Goes to the prev result on the search and put the cursor in the middle"})

keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>") -- Make a file executable
keymap.set("n", "<leader>nf", ":ene<CR>", opts)
-- Moves buffer
keymap.set("n", "<leader>k", ":bn<CR>", opts, { desc = "Move to the next buffer"})
keymap.set("n", "<leader>j", ":bp<CR>", opts, { desc = "Move to the previous buffer"}) -- previous buffer
keymap.set("n", "qa", ":bd!<CR>", opts, { desc = "Delete all buffers"}) -- Delete all Buffer actual
keymap.set("n", "<leader>q", ":bd<CR>", opts, { desc = "Delete the current buffer"}) -- Delete buffer actual
keymap.set("n", "<leader>bl", ":buffers<CR>", opts, { desc = "List of the buffers"}) --List of buffers

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { noremap = true }, { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { noremap = true }, { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { noremap = true }, { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>so", "<C-w>s", { noremap = true }, { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { noremap = true }, { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "sj", "<C-w>j", { noremap = true }, { desc = "Move cursor to down split"}) -- Move cursor to down split
keymap.set("n", "sk", "<C-w>k", { noremap = true }, { desc = "Move cursor to up split"}) -- Move cursor to up split
keymap.set("n", "sh", "<C-w>h", { noremap = true }, { desc = "Move cursor to right split"}) -- Move cursor to right split
keymap.set("n", "sl", "<C-w>l", { noremap = true }, { desc = "Move cursor to left split"}) -- Move cursor to left split
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { noremap = true }, { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { noremap = true }, { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { noremap = true }, { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { noremap = true }, { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { noremap = true }, { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { noremap = true }, { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- SAVE config
keymap.set('n', '<C-s>', ':w<CR>', opts, { desc = "Save buffer" }) -- Save buffer
keymap.set('n', '<leader>sa', ':wa<CR>', opts, { desc = "Save all the open buffers" }) -- save all buffers open
keymap.set('n', '<C-x>', ':x<CR>', opts, { desc = "save and exit" }) -- save and exit
keymap.set('n', '<C-q>', ':q!<CR>', opts, { desc = "Exit without save Force!!!" }) -- Exit without save Force!!!

keymap.set("n", "<C-a>", "ggVG", { noremap = true }) -- Select all
keymap.set('n', '<leader><leader>', '<S-$>%', opts) -- Te lleva al final o el principio de llave relacionada {}[]()
keymap.set('n', '<leader>z', '<S-$>zf%', opts) -- para plegar codigo de manera sencilla, debes colocarte en el principo de la, llave {}[]() y listo, con za en modo normal vuelves a desplegar el codigo

vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>split<CR>:term<CR>:resize 15<CR>", { silent = true }) -- Open the terminal
vim.api.nvim_set_keymap("v", "<C-t>", "<cmd>split<CR>:term<CR>:resize 15<CR>", { silent = true }) -- Open the terminal


