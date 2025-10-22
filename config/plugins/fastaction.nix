{
  plugins.fastaction = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>lua require('fastaction').code_action()<CR>";
    }
  ];
}
