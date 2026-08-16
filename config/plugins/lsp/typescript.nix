{ pkgs, ... }:

{
  plugins = {
    conform-nvim.settings.formatters_by_ft = {
      javascript = [ "prettier" ];
      typescript = [ "prettier" ];
      javascriptreact = [ "prettier" ];
      typescriptreact = [ "prettier" ];
    };
    lsp.servers.vtsls = {
      enable = true;
      settings = {
        typescript.inlayHints = {
          parameterNames.enabled = "all";
          parameterTypes.enabled = true;
          variableTypes.enabled = true;
          propertyDeclarationTypes.enabled = true;
          functionLikeReturnTypes.enabled = true;
          enumMemberValues.enabled = true;
        };
        javascript.inlayHints = {
          parameterNames.enabled = "all";
          parameterTypes.enabled = true;
          variableTypes.enabled = true;
          propertyDeclarationTypes.enabled = true;
          functionLikeReturnTypes.enabled = true;
          enumMemberValues.enabled = true;
        };
      };
    };
  };
  extraPackages = with pkgs; [
    prettier
  ];
}
