return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    vim.treesitter.language.register("haskell", "lhaskell")

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = false },
      autotag = { enable = true },

      ensure_installed = {
        "json","javascript","typescript","tsx","yaml","html","css",
        "prisma","markdown","markdown_inline","svelte","graphql",
        "bash","lua","vim","dockerfile","gitignore","query","vimdoc",
        "c","haskell","gdscript","gdshader","godot_resource",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
