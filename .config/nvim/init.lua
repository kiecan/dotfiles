require("kiecan")

vim.opt.showmatch = true             -- show matching 
vim.opt.ignorecase = true            -- case insensitive 
vim.opt.hlsearch = true              -- highlight search 
vim.opt.tabstop = 4              -- number of columns occupied by a tab 
vim.opt.softtabstop = 4          -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.shiftwidth = 4           -- width for autoindents
vim.opt.autoindent = true            -- indent a new line the same amount as the line just typed
vim.opt.number = true                -- add line numbers
vim.opt.relativenumber = true		-- add relative line number
vim.opt.wildmode = longest,list  -- get bash-like tab completions
vim.opt.cc = "80"                 -- vim.opt.an 80 column border for good coding style
vim.opt.clipboard = unnamedplus  -- using system clipboard
vim.opt.cursorline = true            -- highlight current cursorline
