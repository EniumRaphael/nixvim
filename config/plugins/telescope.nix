{
  plugins.telescope = {
    enable = true;

    settings = {
      defaults = {
        file_ignore_patterns = [
          "$.o"
          "$.d"
          "$.git"
          "a.out"
          "node_modules"
          "object"
          "objects"
        ];
      };
      pickers = {
        man_pages = [
          "1"
          "2"
          "3"
          "4"
          "5"
          "6"
          "7"
          "8"
          "9"
        ];
      };
    };
 
     extensions = {
       fzf-native.enable = true;
      undo.enable = true;
     };
   };

   keymaps = [
     {
       mode = "n";
       key = "<leader>ff";
       action = "<cmd>Telescope find_files prompt_prefix=📂:<cr>";
     }
     {
       mode = "n";
       key = "<leader>fb";
       action = "<cmd>Telescope buffers prompt_prefix=🔖:<cr>";
     }
     {
       mode = "n";
       key = "<leader>fg";
       action = "<cmd>Telescope live_grep prompt_prefix=🪄:<cr>";
     }
     {
       mode = "n";
       key = "<leader>T";
       action = "<cmd>Telescope<cr>";
     }
    {
      mode = "n";
      key = "<leader>u";
      action = "<cmd>Telescope undo prompt_prefix=⏪:<cr>";
    }
    {
      mode = "n";
      key = "<leader>m";
      action = "<cmd>lua require('telescope.builtin').man_pages({sections = { '1','2','3','4','5','6','7','8','9' },prompt_prefix = '📖:'})<cr>";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Telescope git_status prompt_prefix=📝:<cr>";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>Telescope git_branches prompt_prefix=🎋:<cr>";
    }
   ];
}
