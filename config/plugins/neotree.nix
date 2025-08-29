{
  plugins.neo-tree = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Neotree toggle<cr>";
    }
  ];
}
