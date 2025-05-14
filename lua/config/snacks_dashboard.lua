return {
  { section = 'header' },
  { section = 'keys', gap = 1, padding = 1 },
  -- {
  --   pane = 2,
  --   icon = ' ',
  --   title = 'Sessions', -- This is where you add your sessions
  --   section = 'session',
  --   indent = 2,
  --   padding = 1,
  --   action = function()
  --     require('telescope').extensions.persisted.persisted()
  --   end,
  -- },
  { pane = 2, icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
  { pane = 2, icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
  {
    pane = 2,
    icon = ' ',
    title = 'Git Status',
    section = 'terminal',
    enabled = function()
      return require('snacks.git').get_root() ~= nil
    end,
    cmd = 'git status --short --branch --renames',
    height = 5,
    padding = 1,
    ttl = 5 * 60,
    indent = 3,
  },
  { section = 'startup' },
}
