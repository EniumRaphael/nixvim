{
  plugins = {
    colorizer.enable = true;
    lsp = {
      enable = true;
      inlayHints = true;
    };
    nix = {
      enable = true;
    };
    trouble = {
      enable = true;
      settings = {
        position = "bottom";
        height = 12;
        width = 50;
        mode = "workspace_diagnostics";
        fold_open = "";
        fold_closed = "";
        group = true;
        padding = true;
        auto_preview = false;
        auto_fold = false;
        use_diagnostic_signs = true;
      };
    };
    lsp-signature = {
      enable = true;
      settings.hint_prefix = "😼 ";
    };
    comment = {
      enable = true;
      settings = {
        toggler.line = "<C-/>";
        opleader.line = "<C-/>";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Diagnostics du workspace";
    }
    {
      mode = "n";
      key = "<leader>ct";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Diagnostics du document";
    }
    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options.desc = "Références LSP";
    }
  ];
}
