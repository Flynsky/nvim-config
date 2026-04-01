return {
  'HakonHarnes/img-clip.nvim',
  event = 'VeryLazy',
  opts = {
    dir_path = 'pics',
    formats = { 'jpeg', 'jpg', 'png' },
    filetypes = {
      markdown = {
        url_encode_path = true, ---@type boolean | fun(): boolean
        template = '![$CURSOR]($FILE_PATH)', ---@type string | fun(context: table): string
        download_images = false, ---@type boolean | fun(): boolean
      },

      vimwiki = {
        url_encode_path = true, ---@type boolean | fun(): boolean
        template = '![$CURSOR]($FILE_PATH)', ---@type string | fun(context: table): string
        download_images = false, ---@type boolean | fun(): boolean
      },

      html = {
        template = '<img src="$FILE_PATH" alt="$CURSOR">', ---@type string | fun(context: table): string
      },

      tex = {
        relative_template_path = false, ---@type boolean | fun(): boolean
        template = [[
\begin{figure}[h]
  \centering
  \includegraphics[width=0.8\textwidth]{$FILE_PATH}
  \caption{$CURSOR}
  \label{fig:$LABEL}
\end{figure}
    ]], ---@type string | fun(context: table): string
      },
      formats = { 'jpeg', 'jpg', 'png', 'pdf' }, ---@type table
    },
  },
  keys = {
    -- suggested keymap
    { '<leader>p', '<cmd>PasteImage<cr>', desc = 'Paste image from system clipboard' },
  },
}
