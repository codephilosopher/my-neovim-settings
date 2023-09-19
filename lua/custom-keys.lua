-- fetch the keymap function
local map = vim.api.nvim_set_keymap
-- map the key n to tun the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
--CTRL+s to save the file
--;
map('n', '<C-s>', [[:w<CR>]], {})

-- Nvim-dap keymappings
map('n', '<C-A-d>', [[:lua require'dap'.continue()<CR>]], {})
-- CTRL+d removes Nvimtree and move to debug mode
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]], {})
-- Ctrl + B sets a breakpoint
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- Press CTRL + l to set Logpoint
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
-- Press CTRL+SHIFT+q to stepover
map('n', '<A-q>', [[:lua require'dap'.step_over()<CR>]], {})
map('n', '<A-w>', [[:lua require'dap'.step_into()<CR>]], {})
map('n', '<A-e>', [[:lua require'dap'.step_out()<CR>]], {})
map('n', '<A-r>', [[:lua require'dap'.repl.open()<CR>]], {})
map('n', '<dl>', [[:lua require'dap'.run_last()<CR>]], {})
