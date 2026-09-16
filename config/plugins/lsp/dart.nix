{ pkgs, ... }:

{
  plugins.lsp.servers.dartls = {
    enable = true;

    settings = {
      dart = {
        completeFunctionCalls = true;
        showTodos = true;
        renameFilesWithClasses = "prompt";
        updateImportsOnRename = true;
        analysisExcludedFolders = [
          ".dart_tool"
          "build"
        ];
        enableSdkFormatter = true;
        lineLength = 80;
        documentation.preview = true;
        inlayHints = {
          parameterNames = true;
          parameterTypes = true;
          variableTypes = true;
        };
      };
    };
  };

  extraPackages = with pkgs; [
    dart
  ];
}
