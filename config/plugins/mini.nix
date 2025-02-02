{ helpers, ... }:
{
  plugins.mini = {
    enable = true;
    modules = {
      move = {
        mappings = {
          # Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
          left = "<M-left>";
          right = "<M-right>";
          down = "<M-down>";
          up = "<M-up>";

          # Move current line in Normal mode
          line_left = "<C-M-left>";
          line_right = "<C-M-right>";
          line_down = "<C-M-down>";
          line_up = "<C-M-up>";
        };

        options = {
          # Automatically reindent selection during linewise vertical move
          reindent_linewise = false;
        };
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>bd";
      action = helpers.mkRaw ''
        function()
        	local bd = require("mini.bufremove").delete
        	if vim.bo.modified then
        		local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
        		if choice == 1 then -- Yes
        			vim.cmd.write()
        			bd(0)
        		elseif choice == 2 then -- No
        			bd(0, true)
        		end
        	else
        		bd(0)
        	end
        end
      '';
      options = {
        desc = "Remove Buffere";
      };
    }
  ];
}
