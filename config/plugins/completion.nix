{
	plugins = {
		cmp = {
			enable = true;
			settings = {
				sources = [
					{
						name = "ai";
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
			};
		};
		cmp-ai.enable = true;
		cmp-buffer.enable = true;
		cmp-cmdline.enable = true;
		cmp-emoji.enable = true;
		cmp-git.enable = true;
		cmp-nvim-lsp.enable = true;
		cmp-path.enable = true;
		cmp-zsh.enable = true;
		luasnip.enable = true;
	};
}
