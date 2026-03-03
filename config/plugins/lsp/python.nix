{
  plugins.lsp.servers.pyright = {
    enable = true;
    settings.python.analysis = {
      autoSearchPath = true;
      diagnosticsMode = "workspace";
      useLibraryCodeForTypes = true;
      typeCheckingMode = "basic";
    };
  };
}
