{pkgs, ...}:

{
	imports = [
		./plugins/autopair.nix
		./plugins/bufferline.nix
		./plugins/clangd.nix
		./plugins/completion.nix
		./plugins/floaterm.nix
		./plugins/hardtime.nix
		./plugins/hex.nix
		./plugins/line.nix
		./plugins/lsp.nix
		./plugins/neocord.nix
		./plugins/neogen.nix
		./plugins/neotree.nix
		./plugins/noice.nix
		./plugins/notify.nix
		./plugins/telescope.nix
		./plugins/treesitter.nix
		./plugins/ts-comment.nix
		./plugins/wakkatime.nix

		./settings/general.nix
		./settings/keys.nix
	];
	extraPlugins = [
		(pkgs.vimUtils.buildVimPlugin {
			pname = "42header";
			version = "latest";
			src = pkgs.fetchgit {
				url = "https://github.com/42Paris/42header.git";
				rev = "9f51db5cc483951e257aece66f1f4ce3b14cdab1";
				sha256 = "T4BdswmjlrR3KG+97mzncuJ/1OAvx7GDwXW6MI5fBNE=";
			};
		})
	];
}
