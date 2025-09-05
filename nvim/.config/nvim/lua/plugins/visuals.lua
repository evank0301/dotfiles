return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensures it's loaded early
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
        integrations = {
          treesitter = true,
          native_lsp = { enabled = true },
          cmp = true,
          telescope = true,
          gitsigns = true,
        }
      })
      vim.cmd.colorscheme "catppuccin"
    end,
  }
