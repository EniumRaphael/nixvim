{
  plugins.lsp.servers.nixd = {
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
}
