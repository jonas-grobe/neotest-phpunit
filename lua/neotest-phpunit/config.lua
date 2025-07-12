local M = {}

M.get_phpunit_cmd = function()
  return "vendor/bin/phpunit"
end

M.get_env = function()
  return {}
end

M.get_root_ignore_files = function()
  return {}
end

M.get_root_files = function()
  return { "composer.json", "phpunit.xml", ".gitignore" }
end

M.get_filter_dirs = function()
  return { ".git", "node_modules" }
end

M.get_results_path = function()
  local ok, async = pcall(require, "nio")
  if not ok then
    async = require("neotest.async")
  end
  return async.fn.tempname()
end

M.get_path_mapper = function()
  return function(path)
    return path
  end
end

return M
