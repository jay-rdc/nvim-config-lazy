return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_filetypes = {
      TelescopePrompt = false,
      text = false,
    }
    vim.g.copilot_no_tab_map = true

    vim.keymap.set("i", "<Tab>", "<Tab>")
    vim.api.nvim_set_keymap("i", "<M-l>", [[copilot#Accept("")]], { expr = true, silent = true, desc = "Copilot: Accept" })
  end
}
