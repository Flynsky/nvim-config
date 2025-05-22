-- [[ Setting Options ]]
require 'config.vim-opt' -- basic configuration for vim. like numbering on the left
require 'config.vim-keymap' -- basic keychanges
require 'config.custom-terminal' --configuration for embedded terminal. press <C-j> to try
require 'config.install-lazy'

require('lazy').setup({
  require 'config.colorschemes',
  require 'plugins.nvim-transparent',
  require 'plugins.snacks',
  require 'plugins.telescope',
  -- require 'plugins.persisted',
  require 'plugins.auto-session',
  require 'plugins.wich_key', -- Key infos
  require 'plugins.lsp', -- Spellchecking
  require 'plugins.conform', -- Autoformat
  require 'plugins.blink', -- Autocompletion
  require 'plugins.todo-comments', --  Highlight todo, notes, etc in comments
  require 'plugins.treesitter', -- Sitting a tree
  require 'plugins.lualine', -- polished status line
  {
    'eandrju/cellular-automaton.nvim',
    cmd = 'CellularAutomaton', -- Lazy-load only when the command is used
  },
  require 'plugins.lazydev',
  -- require 'plugins.debug',
  -- require 'plugins.indent_line',
  -- require 'plugins.lint',
  -- require 'plugins.autopairs',
  -- require 'plugins.neo-tree',
  -- require 'plugins.gitsigns', -- adds gitsigns recommend keymaps
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
-- vim: ts=2 sts=2 sw=2 et
