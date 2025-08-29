{
	plugins = {
		lsp = {
			enable = true;
			inlayHints = true;
			servers = {
				arduino_language_server.enable = true;
				asm_lsp.enable = true;
				clangd.enable = true;
				eslint.enable = true;
				ts_ls.enable = true;
			};
		};
		nix = {
			enable = true;
		};
		lsp-signature = {
			enable = true;
			settings = {
				hint_prefix = "😼 ";
			};
		};
		comment = {
			enable = true;
			settings = {
				toggler = {
					line = "<C-/>";
				};
				opleader.line = "<C-/>";
			};
		};
	};

	keymaps = [
		{
			mode = "n";
			key = "gd";
			action = "<cmd>lua vim.lsp.buf.definition()<cr>";
		}
		{
			mode = "n";
			key = "gr";
			action = "<cmd>lua vim.lsp.buf.references()<cr>";
		}
		{
			mode = "n";
			key = "gi";
			action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
		}
		{
			mode = "n";
			key = "K";
			action = "<cmd>lua vim.lsp.buf.hover()<cr>";
		}
		{
			mode = "n";
			key = "<C-k>";
			action = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
		}
		{
			mode = "n";
			key = "<leader>rn";
			action = "<cmd>lua vim.lsp.buf.rename()<cr>";
		}
		{
			mode = "n";
			key = "<leader>ca";
			action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
		}
	];
}
