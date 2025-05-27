{
	plugins.copilot-lua = {
		enable = true;
		settings = {
			filetypes = {
				"." = false;
				cvs = false;
				markdown = false;
				svn = false;
				yaml = false;
				"*" = true;
			};
			panel = {
				enabled = true;
				auto_refresh = true;
				layout = {
					position = "right";
					ratio = 0.3;
				};
			};
		};
	};
 	keymaps = [
 		{
			mode = "n";
 			key = "<leader>c";
 			action = "<cmd>Copilot panel<cr>";
 		}
 	];
}
