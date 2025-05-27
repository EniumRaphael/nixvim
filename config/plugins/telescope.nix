{
	plugins.telescope = {
		enable = true;

		settings.defaults = {
 			file_ignore_patterns = [
				"$.o"
 				"$.d"
 				"$.git"
 				"a.out"
 				"node_modules"
 				"object"
 				"objects"
 			];
 		};
 
 		extensions = {
 			fzf-native.enable = true;
			undo.enable = true;
 		};
 	};

 	keymaps = [
 		{
 			mode = "n";
 			key = "<leader>f";
 			action = "<cmd>Telescope find_files prompt_prefix=📂:<cr>";
 		}
 		{
 			mode = "n";
 			key = "<leader>b";
 			action = "<cmd>Telescope buffers prompt_prefix=🔖:<cr>";
 		}
 		{
 			mode = "n";
 			key = "<leader>g";
 			action = "<cmd>Telescope live_grep prompt_prefix=🪄:<cr>";
 		}
 		{
 			mode = "n";
 			key = "<leader>T";
 			action = "<cmd>Telescope<cr>";
 		}
		{
			mode = "n";
			key = "<leader>u";
			action = "<cmd>Telescope undo prompt_prefix=⏪:<cr>";
		}
		{
			mode = "n";
			key = "<leader>m";
			action = "<cmd>Telescope man_pages prompt_prefix=📖:<cr>";
		}
		{
			mode = "n";
			key = "<leader>gs";
			action = "<cmd>Telescope git_status prompt_prefix=📝:<cr>";
		}
		{
			mode = "n";
			key = "<leader>gb";
			action = "<cmd>Telescope git_branch<cr> prompt_prefix=🎋:";
		}
 	];
}
