local M = {}
M.run_post_func = function (returncode)
  if returncode == 0 then
    vim.notify("compile success", vim.log.levels.INFO)
  else
    vim.notify("compile error", vim.log.levels.WARN)
  end
end

return M
