{
	plugins = {
		cmp = {
			enable = true;
			settings = {
				sources = [
					{
						name = "treesitter";
					}
					{
						name = "zsh";
					}
					{
						name = "nvim_lsp";
					}
					{
						name = "buffer";
					}
					{
						name = "path";
					}
					{
						name = "cmdline";
					}
					{
						name = "emoji";
					}
					{
						name = "git";
					}
					{
						name = "luasnip";
					}
				];
				mapping = {
					"<Down>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
					"<Up>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
					"<C-d>" = "cmp.mapping.scroll_docs(-4)";
					"<C-f>" = "cmp.mapping.scroll_docs(4)";
					"<C-Space>" = "cmp.mapping.complete()";
					"<Left>" = "cmp.mapping.abort()";
					"<Right>" = "cmp.mapping.confirm({ select = true })";
				};
			};
		};
		cmp-buffer.enable = true;
		cmp-cmdline.enable = true;
		cmp-emoji.enable = true;
		cmp-git.enable = true;
		cmp-nvim-lsp.enable = true;
		cmp-path.enable = true;
		cmp-treesitter.enable = true;
		cmp-zsh.enable = true;
		luasnip.enable = true;
	};
}
