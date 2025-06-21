-- exiting Terminal with single tab
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- exiting Insert Mode in Terminal when pressed Enter
vim.keymap.set('t', '<CR>', '<CR><C-\\><C-n>', { desc = 'Enter and leave terminal insert mode' })

-- Terminal buffer acessable via <C+J> like in VSC
-- _G.vertical_term_bufnr = nil -- Store the terminal buffer number globally
-- vim.keymap.set('n', '<C-t>', function()
--   local current_buf = vim.api.nvim_get_current_buf()
--   local current_buftype = vim.api.nvim_buf_get_option(current_buf, 'buftype')
--
--   -- If currently in the terminal, close it
--   if _G.vertical_term_bufnr and current_buf == _G.vertical_term_bufnr then
--     vim.cmd 'close'
--     return
--   end
--
--   -- If terminal buffer exists and is valid, reuse it
--   if _G.vertical_term_bufnr and vim.api.nvim_buf_is_valid(_G.vertical_term_bufnr) then
--     vim.cmd 'split'
--     vim.api.nvim_set_current_buf(_G.vertical_term_bufnr)
--   else
--     -- Create a new terminal buffer and store it
--     vim.cmd 'split | terminal'
--     _G.vertical_term_bufnr = vim.api.nvim_get_current_buf()
--   end
-- end, { desc = 'Toggle vertical terminal', noremap = true, silent = true })
