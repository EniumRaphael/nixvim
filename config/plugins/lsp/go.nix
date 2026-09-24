{
  plugins.lsp.servers.gopls = {
    enable = true;
    filetypes = [
      "go"
      "gomod"
      "gowork"
      "gotmpl"
    ];
    cmd = [
      "gopls"
    ];
    settings = {
      gopls = {
        gofumpt = true;
        staticcheck = true;
        usePlaceholders = true;
        completeUnimported = true;
        analyses = {
          unusedparams = true;
          shadow = true;
        };
        hints = {
          assignVariableTypes = true;
          compositeLiteralFields = true;
          constantValues = true;
          functionTypeParameters = true;
          parameterNames = true;
          rangeVariableTypes = true;
        };
      };
    };
  };
}
