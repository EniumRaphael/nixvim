{ pkgs, ... }:

{
  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        c = [
          "clang-format"
        ];
        cpp = [
          "clang-format"
        ];
        tpp = [
          "clang-format"
        ];
      };
    };
    lsp.servers.clangd = {
      enable = true;
      cmd = [
        "clangd"
        "--background-index"
        "--clang-tidy"
        "--cross-file-rename"
        "--completion-style=detailed"
        "--header-insertion=iwyu"
      ];
      filetypes = [
        "c"
        "cpp"
        "tpp"
      ];
    };
  };
  extraPackages = with pkgs; [
    clang-tools
  ];
}
