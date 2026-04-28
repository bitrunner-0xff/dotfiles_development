-- Options are automatically loaded before lazy.nvim startup

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.guicursor = ""

-- LazyVim auto format
vim.g.autoformat = true

-- Snacks animations
-- Set to `false` to globally disable all snacks animations
vim.g.snacks_animate = false

-- LazyVim picker to use.
-- Can be one of: telescope, fzf
-- Leave it to "auto" to automatically use the picker
-- enabled with `:LazyExtras`
vim.g.lazyvim_picker = "fzf"

-- LazyVim completion engine to use.
-- Can be one of: nvim-cmp, blink.cmp
-- Leave it to "auto" to automatically use the completion engine
-- enabled with `:LazyExtras`
vim.g.lazyvim_cmp = "auto"

-- if the completion engine supports the AI source,
-- use that instead of inline suggestions
vim.g.ai_cmp = false

-- LazyVim root dir detection
-- Each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- Optionally setup the terminal to use
-- This sets `vim.o.shell` and does some additional configuration for:
-- * pwsh
-- * powershell
-- LazyVim.terminal.setup("pwsh")

-- Set LSP servers to be ignored when used with `util.root.detectors.lsp`
-- for detecting the LSP root
vim.g.root_lsp_ignore = { "copilot" }

-- Hide deprecation warnings
vim.g.deprecation_warnings = false

-- Show the current document symbols location from Trouble in lualine
-- You can disable this for a buffer by setting `vim.b.trouble_lualine = false`
vim.g.trouble_lualine = true

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

local opt = vim.opt

opt.termguicolors = true

-- APPEARANCE -----------------------------------------------------------------

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.linebreak = true
opt.wrap = false
opt.pumblend = 0
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.showmode = false -- Dont show mode since we have a statusline
opt.termguicolors = true -- True color support
opt.ruler = false
opt.statuscolumn = [[%!v:lua.LazyVim.statuscolumn()]]
opt.laststatus = 3
opt.winminwidth = 5 -- Minimum window width
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}

-- Folding ---------------------------------------------------------------------

opt.foldlevel = 99
opt.foldmethod = "indent"
opt.foldtext = ""

-- TAB INDENT -----------------------------------------------------------------
--
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- FORMATTING ---------------------------------------------------------------------

opt.formatexpr = "v:lua.LazyVim.format.formatexpr()"
opt.formatoptions = "jcroqlnt" -- tcqj

-- GREP ---------------------------------------------------------------------

opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"

-- SEARCH ---------------------------------------------------------------------
--
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.scrolloff = 8
opt.signcolumn = "yes"

opt.updatetime = 100
opt.timeoutlen = 500

opt.colorcolumn = "80"
opt.background = "dark"

-- MISC ----------------------------------------------------------------------
--
opt.mouse = "a" -- Enable mouse mode

-- Clipboard
opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus" -- Sync with system clipboard

opt.autowrite = true -- Enable auto write
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.backup = false
opt.writebackup = false
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold

opt.sidescrolloff = 8 -- Columns of context
opt.smoothscroll = true
opt.splitkeep = "screen"
opt.splitright = true -- Pustatusline't new windows right of current
opt.timeoutlen = vim.g.vscode and 1000 or 300 -- Lower than default (1000) to quickly trigger which-key
opt.completeopt = { "menu", "menuone", "noselect" }
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
-- Highlight matching brace
opt.showmatch = true
opt.complete = "kspell" -- TODO: test if it works at all
-- opt.autocomplete = true
opt.spelllang = { "en" }
opt.spellsuggest = { "best", 9 }
opt.wildignorecase = true
opt.jumpoptions = "view"
opt.inccommand = "nosplit"
opt.confirm = true
opt.autowriteall = true
opt.list = true
opt.listchars = { tab = [[│ ]], trail = "•", extends = "»", precedes = "«" }
opt.foldenable = false
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
