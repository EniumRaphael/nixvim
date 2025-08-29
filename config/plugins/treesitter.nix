{
  plugins.treesitter = {
    enable = true;
    settings = {
      auto_install = true;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
      ensureInstalled = [
        "all"
      ];
      indent.enable = true;
    };
  };
}
