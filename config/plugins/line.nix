{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "catppuccin";
        icons_enabled = true;
        globalstatus = true;
        section_separators = {
          left = "";
          right = "";
        };
        component_separators = {
          left = "";
          right = "";
        };
      };

      sections = {
        lualine_a = [
          "mode"
        ];
        lualine_b = [
          "branch"
          "diff"
          "diagnostics"
        ];
        lualine_c = [
          "filename"
        ];
        lualine_x = [
          "encoding"
          "fileformat"
          "filetype"
        ];
        lualine_y = [
          "progress"
        ];
        lualine_z = [
          "location"
        ];
      };
    };
  };
}
