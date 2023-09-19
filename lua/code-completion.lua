-- complete opt is used to manage code suggestion format
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}

local cmp = require 'cmp'
 cmp.setup ({
	 --Configuration
	 --Sources are installed that can be used for code for code suggestion
	 sources = {
		 { name = 'path' },
		 { name = 'nvim_lsp', keyword_length = 3 },
		 { name = 'nvim_lsp_signature)help' },
		 { name = 'nvim_lua',keyword_length = 2 },
		 { name = 'buffer', keyword_length = 2 },
		 { name = 'vsnip', keyword_length = 2  },
	 },

	 --window for stying
	 window = {
		 completion = cmp.config.window.bordered(),
		 documentation = cmp.config.window.bordered(),
	 },

	 --formatting
	 formatting = {
		 fields = {'menu', 'abbr', 'kind'},
		 format = function(entry, item)
			 local menu_icon = {
				 nvim_lsp = '󰘧',
				 vsnip = '',
				 buffer = 'b',
				 path = 'p'
			 }
			 item.menu = menu_icon[entry.source.name]
			 return item
		 end,
		 },

	 -- Mappings are keyboard shortcut to execute commands
	 mapping = {
		-- Shift+Tab go to previous suggest item
		 ['<S-Tab>'] = cmp.mapping.select_prev_item(),
		--Tab to go the next item  
		 ['<Tab>'] = cmp.mapping.select_next_item(),
		-- CTRL+e closes the suggestion tab
		 ['<C-e>'] = cmp.mapping.close(),
		-- CTRL+Space to bring up the code completion at current cursor
		 ['<C-Space>'] = cmp.mapping.complete(),
		-- Pressing Enter or return will confiem and apply
		['<CR>'] = cmp.mapping.confirm({
		  	behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		})
	 }
 })
