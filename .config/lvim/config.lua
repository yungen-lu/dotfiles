lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.leader = "space"
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.notify.active = true
lvim.lsp.diagnostics.virtual_text = false
lvim.keys.insert_mode["jk"] =  false
lvim.keys.insert_mode["kj"] = false
lvim.keys.insert_mode["jj"] = false
lvim.keys.insert_mode["<A-Up>"] = false
lvim.keys.insert_mode["<A-Down>"] = false
lvim.keys.insert_mode["<A-Left>"] = false
lvim.keys.insert_mode["<A-Right>"] = false
lvim.keys.command_mode["<C-j>"] = false
lvim.keys.command_mode["<C-k>"] = false
lvim.lsp.override = vim.tbl_filter(function(name)
  return name ~= "tailwindcss"
end, lvim.lsp.override)
vim.api.nvim_set_keymap('i', '<C-a>', '<C-o>I', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-e>', '<C-o>A', {noremap = true})

-- vim.api.nvim_set_keymap('v','al',':<C-U>normal 0v$h<CR>',{noremap = true})
-- vim.api.nvim_set_keymap('o','al',':normal val<CR>',{noremap = false})
-- vim.api.nvim_set_keymap('v','il',':<C-U>normal ^vg_<CR>',{noremap = true})
-- vim.api.nvim_set_keymap('o','il',':normal vil<CR>',{noremap = false})
lvim.autocommands.custom_groups = {
  { "CursorHold", "*", "lua vim.diagnostic.open_float(0,{scope='line'})" },
}
lvim.builtin.treesitter.ensure_installed = {
  "lua",
  "c",
  "cpp",
  "python",
  "javascript",
  "typescript",
  "tsx",
  "yaml",
  "java",
  "dockerfile",
  "verilog",
  "bash",
  "html",
  "go"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.autotag = {enable = true}
lvim.lsp.automatic_servers_installation = false
require("user.plugins").config()
-- lvim.builtin.which_key.mappings["F"] = {
--   "<cmd>lua vim.lsp.buf.formatting_sync({}, 1000)<cr>", "Format"
-- }
lvim.builtin.which_key.mappings["o"] = {
  "<cmd> SymbolsOutline<cr>", "symbols-outline"
}
lvim.builtin.which_key.mappings["k"] = {
  name = "+task",
  c = {"<cmd>AsyncTask file-build<cr>", "compile file"},
  e = {"<cmd>AsyncTaskEdit<cr>", "edit local tasks"},
  g = {"<cmd>AsyncTaskEdit!<cr>", "edit global tasks"},
  r = {"<cmd>AsyncTask file-run<cr>", "run file"},
}
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "Diagnostics",
--   t = { "<cmd>TroubleToggle<cr>", "trouble" },
--   w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace" },
--   d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document" },
--   q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
--   l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
--   r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
-- }
vim.opt.wrap = true
vim.g.asynctasks_term_pos = "toggleterm"
vim.g.asynctasks_term_reuse = 1
vim.g.asyncrun_open = 6
-- vim.cmd([[ vnoremap al :<C-U>normal 0v$h<CR>
--     omap al :normal val<CR>
--     vnoremap il :<C-U>normal ^vg_<CR>
--     omap il :normal vil<CR>
-- ]])
vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = true,
    width = 35,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},
    symbols = {
        File = {icon = "", hl = "TSURI"},
        Module = {icon = " ", hl = "TSNamespace"},
        Namespace = {icon = "", hl = "TSNamespace"},
        Package = {icon = "", hl = "TSNamespace"},
        Class = {icon = " ", hl = "TSType"},
        Method = {icon = " ", hl = "TSMethod"},
        Property = {icon = " ", hl = "TSMethod"},
        Field = {icon = " ", hl = "TSField"},
        Constructor = {icon = " ", hl = "TSConstructor"},
        Enum = {icon = "練", hl = "TSType"},
        Interface = {icon = "ﰮ ", hl = "TSType"},
        Function = {icon = " ", hl = "TSFunction"},
        Variable = {icon = " ", hl = "TSConstant"},
        Constant = {icon = "ﲀ ", hl = "TSConstant"},
        String = {icon = " ", hl = "TSString"},
        Number = {icon = " ", hl = "TSNumber"},
        Boolean = {icon = "⊨", hl = "TSBoolean"},
        Array = {icon = "", hl = "TSConstant"},
        Object = {icon = "⦿", hl = "TSType"},
        Key = {icon = " ", hl = "TSType"},
        Null = {icon = "NULL", hl = "TSType"},
        EnumMember = {icon = " ", hl = "TSField"},
        Struct = {icon = " ", hl = "TSType"},
        Event = {icon = " ", hl = "TSType"},
        Operator = {icon = "", hl = "TSOperator"},
        TypeParameter = {icon = " ", hl = "TSParameter"}
    }
}
lvim.builtin.treesitter.indent = { enable = true, disable = { "yaml", "python" } }
-- lvim.lsp.diagnostics.on_publish_diagnostics = {update_in_insert = true}
lvim.builtin.dashboard.custom_header = {
  '',
  '',
  ' ██╗   ██╗██╗   ██╗███╗   ██╗ ██████╗ ███████╗███╗   ██╗  ',
  ' ╚██╗ ██╔╝██║   ██║████╗  ██║██╔════╝ ██╔════╝████╗  ██║  ',
  '  ╚████╔╝ ██║   ██║██╔██╗ ██║██║  ███╗█████╗  ██╔██╗ ██║  ',
  '   ╚██╔╝  ██║   ██║██║╚██╗██║██║   ██║██╔══╝  ██║╚██╗██║  ',
  '    ██║   ╚██████╔╝██║ ╚████║╚██████╔╝███████╗██║ ╚████║  ',
  '    ╚═╝    ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝  ',
  '',
  '',
}
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
  },
}
