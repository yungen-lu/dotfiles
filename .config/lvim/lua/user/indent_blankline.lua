local M = {}

M.config = function ()
  local status_ok, ibl = pcall(require, "indent_blankline")
  if not  status_ok then
    return
  end
  ibl.setup {
    enabled = true,
    bufname_exclude = { "README.md" },
    buftype_exclude = { "terminal", "nofile" },
    filetype_exclude = {
      "log",
      "json",
      "txt",
      "NvimTree",
      "git",
      "TelescopePrompt",
      "help",
      "dashboard",
      "packer",
      "Outline",
      "lspinfo",
      "", -- for all buffers without a fie type
    },
    -- char = "▏",
    char_list = { "", "┊", "┆", "¦", "|", "¦", "┆", "┊", "" },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    space_char_blankline = " ",
    use_treesitter = true,
    show_foldtext = false,
    show_current_context = true,
    show_current_context_start = false,
  }
end

return M
