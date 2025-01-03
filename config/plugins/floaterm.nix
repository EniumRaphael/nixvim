{
	plugins.floaterm = {
		enable = true;
		settings = {
			height = 0.9;
			keymap_kill = "<Leader>fk";
			keymap_new = "<Leader>ft";
			keymap_next = "<Leader>fn";
			keymap_prev = "<Leader>fp";
			keymap_toggle = "<Leader>t";
			opener = "edit ";
			rootmarkers = [
				"build/CMakeFiles"
				".project"
				".git"
				".hg"
				".svn"
				".root"
			];
			title = "Floaterm";
			width = 0.9;
		};
	};
}
