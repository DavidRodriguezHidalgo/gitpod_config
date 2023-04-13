-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    mouse = 'a',
    numberwidth = 1,
    showcmd = true,
    ruler = true,
    encoding = 'utf-8',
    showmatch = true,
    sw = 2,
    laststatus = 2,
    showmode = false,
    autoindent = true,
    lazyredraw = true,
    hlsearch = false,
    incsearch = true,
    swapfile = false,
    hidden = true,
    digraph = true,
    tabstop = 2,
    shiftwidth = 2,
    expandtab = true,
    smartindent = true,
    smartcase = true,
    termguicolors = true,
    scrolloff = 8,
    cursorline = true,
    ttyfast = true,
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
--
-- TODO: check how to add this:
-- vim.cmd([[
-- set list listchars=tab:··,trail:·
-- set signcolumn=yes
-- set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
-- set cc=120 " Show at 120 column a border for good code style
-- ]])
