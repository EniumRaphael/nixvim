{
  plugins.lsp.servers.clangd = {
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
}
