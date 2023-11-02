local M = {}
M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoin<CR>",
      "toggle breakpoint"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
  },
}
M.crates = {
 n = {
    ["<leader>rcu"] = {
      function ()
       require("crates").upgrade_all_crates()
      end,
    }
  },
}
return M
