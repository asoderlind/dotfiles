local present, packer = pcall(require, "plugins.packerInit")

if not present then
  return false
end

local use = packer.use

--- startup and add configure plugins
return packer.startup(function()

   use {
     "nvim-lua/plenary.nvim",
   }

   use {
     "wbthomason/packer.nvim",
     event = "VimEnter",
   }

  use {
     "kyazdani42/nvim-web-devicons",
     after = "nvim-base16.lua",
     config = function()
       require "plugins.configs.icons"
     end,
  }

  -- file managing , picker etc
  use {
     "kyazdani42/nvim-tree.lua",
     after = "nvim-web-devicons",
     cmd = {"NvimTreeToggle", "NvimTreeFocus"},
     config = function()
       require "plugins.configs.nvimtree"
     end,
     setup = function()
       require("core.mappings").nvimtree()
     end,
  }

  use {
    "NvChad/nvim-base16.lua",
    after = "packer.nvim",
    config = function()
       require("colors").init()
    end,
  }

  use {
    "nvim-telescope/telescope.nvim",
    config = function()
        require "plugins.configs.telescope"
    end,
    setup = function()
        require("core.mappings").telescope()
    end,
  }

  use {
     "akinsho/bufferline.nvim",
     after = "nvim-web-devicons",
     config = function()
        require "plugins.configs.bufferline"
     end,
     setup = function()
        require("core.mappings").bufferline()
     end,
  }

  -- lsp stuff
  use {
     "williamboman/nvim-lsp-installer",
     config = function()
        require "plugins.configs.lspinstaller"
     end,
  }

  use {
     "neovim/nvim-lspconfig",
     after = "nvim-lsp-installer",
     config = function()
        require "plugins.configs.lspconfig"
     end,
  }

  use {
     "ray-x/lsp_signature.nvim",
     after = "nvim-lspconfig",
     config = function()
        require("plugins.configs.others").signature()
     end,
  }

  use {
     "nvim-treesitter/nvim-treesitter",
     event = "BufRead",
     config = function()
        require "plugins.configs.treesitter"
     end,
  }

   use {
     "lukas-reineke/indent-blankline.nvim",
     event = "BufRead",
     config = function()
        require "plugins.configs.blankline"
     end,
  }

  --autocomplete stuff
  use {
     "rafamadriz/friendly-snippets",
     event = "InsertEnter",
  }

  use {
     "hrsh7th/nvim-cmp",
     after = "friendly-snippets",
     config = function()
        require "plugins.configs.cmp"
     end,
  }

  use {
     "L3MON4D3/LuaSnip",
     wants = "friendly-snippets",
     after = "nvim-cmp",
     config = function()
        require("plugins.configs.others").luasnip()
     end,
  }

  use {
     "saadparwaiz1/cmp_luasnip",
     after = "LuaSnip",
  }

  use {
     "hrsh7th/cmp-nvim-lua",
     after = "cmp_luasnip",
  }

  use {
     "hrsh7th/cmp-nvim-lsp",
     after = "cmp-nvim-lua",
  }

  use {
     "hrsh7th/cmp-buffer",
     after = "cmp-nvim-lsp",
  }

end)
