{
	plugins.tmux-navigator = {
		enable = true;
		keymaps = [
			{
				action = "left";
				key = "<C-h>";
				mode = [
					"n"
					"v"
				];
			}
			{
				action = "down";
				key = "<C-j>";
				mode = [
					"n"
					"v"
				];
			}
			{
				action = "up";
				key = "<C-k>";
				mode = [
					"n"
					"v"
				];
			}
			{
				action = "right";
				key = "<C-l>";
				mode = [
					"n"
					"v"
				];
			}
		];
	};
}
