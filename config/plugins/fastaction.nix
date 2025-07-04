{
	plugins.fastaction = {
		enable = true;
	};
	keymaps = [
		{
			mode = "n";
			key = "<leader>a";
			action = "<cmd>lua require('fastaction').code_action()<CR>";
		}
	];
}
