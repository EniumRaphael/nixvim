{
	plugins.telescope = {
		enable = true;

		settings.defaults = {
			file_ignore_patterns = [
				"^.d"
				"^.git"
				"^.o"
				"a.out"
				"node_modules"
				"object"
				"objects"
			];
		};

#		extensions = {
#			fzf-native.enable = true;
#		};
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
	];
}
