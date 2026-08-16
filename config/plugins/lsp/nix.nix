{ pkgs, ... }:

{
  plugins = {
    conform-nvim.settings.formatters_by_ft.nix = [ "nixfmt" ];
    lsp.servers.nixd = {
      enable = true;
      settings.nixd = {
        formatting.command = [
          "nixfmt"
        ];
        options = {
          nixpkgs.expr = "import <nixpkgs> {}";
          nixos.expr = "(import <nixpkgs/nixos> { }).config";
        };
      };
    };
  };
  extraPackages = with pkgs; [
    nixfmt
  ];
}
