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

   -- file managing , picker etc
  use {
     "kyazdani42/nvim-tree.lua",
     cmd = { "NvimTreeToggle", "NvimTreeFocus" },
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
     "kyazdani42/nvim-web-devicons",
     after = "nvim-base16.lua",
     config = function()
        require "plugins.configs.icons"
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

end)