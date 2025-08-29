{
  plugins.floaterm = {
    enable = true;
    settings = {
      height = 0.9;
      keymap_kill = "<Leader>Tk";
      keymap_new = "<Leader>Tt";
      keymap_next = "<Leader>Tn";
      keymap_prev = "<Leader>Tp";
      keymap_toggle = "<Leader>t";
      opener = "edit ";
      rootmarkers = [
        "build/CMakeFiles"
        ".project"
        ".git"
        ".hg"
        ".svn"
        ".root"
      ];
      title = "Floaterm";
      width = 0.9;
    };
  };
}
