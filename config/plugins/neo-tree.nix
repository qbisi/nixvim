{
  plugins.neo-tree = {
    enable = true;
    filesystem = {
      filteredItems = {
        visible = true;
        alwaysShow = [ ".gitignore" ];
        neverShow = [
          ".DS_Store"
          "thumbs.db"
        ];
      };
      # hijackNetrwBehavior = "disabled";
      useLibuvFileWatcher = true;
    };
    window = {
      mappings = {
        "<left>".__raw = ''
          function(state)
            local node = state.tree:get_node()
            if node.type == "directory" and node:is_expanded() then
              require("neo-tree.sources.filesystem").toggle_directory(state, node)
            else
              require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
            end
          end
        '';
        "<right>".__raw = ''
          function(state)
            local node = state.tree:get_node()
            if node.type == "directory" then
              if not node:is_expanded() then
                require("neo-tree.sources.filesystem").toggle_directory(state, node)
              elseif node:has_children() then
                require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
              end
            else
              require("neo-tree.sources.common.preview").show(state)
            end
          end
        '';
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options = {
        desc = "Toggle Neo-Tree";
      };
    }
  ];
}
