{
  plugins = {
    notify.enable = true;
    noice = {
      enable = true;
      settings = {
        lsp = {
          progress = {
            enabled = true;
          };
          override = {
            "vim.lsp.util.convert_input_to_markdown_lines" = true;
            "vim.lsp.util.stylize_markdown" = true;
            "cmp.entry.get_documentation" = true;
          };
        };
        views.cmdline_popup = {
          position = {
            row = "50%";
            col = "50%";
          };
          size = {
            height = "auto";
          };
          border = {
            style = "rounded";
            padding = [
              0
              1
            ];
          };
          win_options = {
            winblend = 10;
          };
        };
        presets = {
          bottom_search = false;
          command_palette = true;
          long_message_to_split = true;
          inc_rename = false;
          lsp_doc_border = true;
        };
        routes = [
          {
            filter = {
              event = "cmdline";
              find = "IncRename";
            };
          }
        ];
      };
    };
    inc-rename = {
      enable = true;
      settings = {
        input_buffer_type = "dressing";
        preview_empty_name = false;
        show_message = {
          __raw = ''
          function(msg)
            vim.notify(msg, vim.log.levels.INFO, { title = "Rename" })
          end
          '';
        };
      };
    };
    dressing = {
      enable = true;
      settings = {
        select = {
          enabled = true;
          backend = [
            "telescope"
            "builtin"
          ];
          trim_prompt = true;
          telescope = {
            sorting_strategy = "ascending";
            layout_config = {
              prompt_position = "center";
            };
          };
          builtin = {
            border = "rounded";
            win_options = {
              winblend = 10;
            };
          };
        };
        input = {
          enabled = true;
          default_prompt = "➜ ";
          border = "rounded";
          prefer_width = 0.5;
          win_options = {
            winblend = 10;
          };
          insert_only = false;
          start_in_insert = true;
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>r";
      action = ":IncRename ";
    }
  ];
}
