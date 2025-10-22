return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      require("telescope").setup({
        pickers = {
          find_files = {
            find_command = {"rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          }
        }
      })
      vim.keymap.set('n', '<C-p>', builtin.find_files, {desc = "Find Files"})
      vim.keymap.set('n', '<C-b>', builtin.buffers, {desc = 'Telescope buffers'})
      vim.keymap.set('n', '<leader><leader>', builtin.live_grep, {desc = "Live Grep"})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
          }
        }
      }
    })
    require("telescope").load_extension("ui-select")
    end
  }
}
