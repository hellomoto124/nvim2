
local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
  vim.notify("copilot not found!")
  return
end

copilot.setup {

  {
      plugin_manager_path = vim.fn.stdpath("data") .. "/site/pack/packer",
      server_opts_overrides = {},
      ft_disable = {}
  }

}
