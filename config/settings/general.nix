{
  colorschemes.catppuccin = {
    settings.style = "mocha";
    enable = true;
  };
  autoCmd = [
    {
      event = [
        "BufRead" "BufNewFile"
      ];
      pattern = "*.tpp";
      command = "set filetype=cpp";
    }
  ];
  globals = {
    mapleader = " ";
    mail42 = "rparodi@student.42.fr";
    user42 = "rparodi";
  };
  opts = {
    autoindent = true;
    clipboard = "unnamed,unnamedplus";
    columns = 80;
    ignorecase = true;
    linebreak = true;
    list = true;
    listchars = "eol:↵,tab:→ ";
    mouse = "a";
    number = true;
    relativenumber = true;
    ruler = true;
    scrolloff = 3;
    shiftwidth = 4;
    showmatch = true;
    smartindent = true;
    splitbelow = true;
    splitright = true;
    swapfile = false;
    syntax = "on";
    tabstop = 4;
    termguicolors = true;
    wrap = false;
  };
}
