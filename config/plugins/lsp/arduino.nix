{
  plugins.lsp.servers.arduino_language_server = {
    enable = true;
    cmd = [
      "arduino-language-server"
      "-cli"
      "arduino-cli"
      "-clangd"
      "clangd"
    ];
  };
}
