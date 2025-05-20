return {
  'xiyaowong/nvim-transparent',
  config = function()
    require('transparent').setup {
      enable = true,
      extra_groups = {
        'NormalFloat', -- floating windows
        'NvimTreeNormal', -- if you're using nvim-tree
        'Normal',
        'NormalNC',
        'VertSplit',
        'SignColumn',
        'StatusLine',
        'EndOfBuffer',
      },
      exclude = {}, -- filetypes you want to keep opaque
    }
  end,
}
