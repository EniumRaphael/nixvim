{
  plugins = {
    treesitter = {
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
    statuscol = {
      enable = true;
      settings = {
        relculright = true;
        setopt = true;
        segments = [
          {
            sign = {
              name = [ "Diagnostic" "GitSigns" ];
              maxwidth = 2;
              auto = true;
            };
            text = [ "%s" ];
            click = "v:lua.ScSa";
          }
          {
            text = [ " " ];
          }
          {
            text = [ "%l" ];
            condition = [ { __raw = "vim.wo.number"; } ];
          }
          {
            text = [
              {
                __raw = ''
              function()
                local foldlevel = vim.fn.foldlevel(vim.v.lnum)
                local foldclosed = vim.fn.foldclosed(vim.v.lnum)
                local foldlevel_before = vim.fn.foldlevel(vim.v.lnum - 1)

                if foldclosed ~= -1 and foldclosed == vim.v.lnum then
                  return ""
                end
                if foldlevel > foldlevel_before then
                  return ""
                end
                return " "
              end
              '';
              }
            ];
            click = "v:lua.ScFa";
          }
          {
            text = [ "  " ];
          }
        ];
      };
    };
  gitsigns = {
    enable = true;
      settings = {
        signs = {
          add = {
            text = "";
          };
          change = {
            text = "";
          };
          changedelete = {
            text = "";
          };
          delete = {
            text = "";
          };
          topdelete = {
            text = "";
          };
          untracked = {
            text = "";
          };
        };
        watch_gitdir = {
          follow_files = true;
        };
      };
    };
  };
  extraConfigLua = ''
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN]  = " ",
          [vim.diagnostic.severity.INFO]  = " ",
          [vim.diagnostic.severity.HINT]  = "󰌶 ",
        },
      },
    })

    function _G.ScFa(minwid, click, btn, mods)
      local line = vim.fn.line('.')
      if vim.fn.foldclosed(line) ~= -1 then
        vim.cmd('normal! zo')
      else
        vim.cmd('normal! zc')
      end
    end
    '';
  opts = {
    number = true;
    relativenumber = true;
    foldmethod = "expr";
    foldexpr = "nvim_treesitter#foldexpr()";
    foldcolumn = "1";
    foldenable = true;
    foldlevel = 99;
    foldlevelstart = 99;
  };
}
