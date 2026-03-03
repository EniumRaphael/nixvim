{
  plugins.lsp.servers.asm_lsp = {
    enable = true;
    filetypes = [
      "asm"
      "s"
      "S"
    ];
    cmd = [
      "asm-lsp"
    ];
    onAttach = {
      function = ''
        vim.env.ASM_LSP_CONFIG = vim.fn.getcwd() .. "/asm-lsp.toml"
      '';
    };
  };
}

