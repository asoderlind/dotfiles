local present, packer = pcall(require, "plugins.packerInit")

if not present then
  return false
end

local use = packer.use

--- startup and add configure plugins
return packer.startup(function()

  use {
    "wbthomason/packer.nvim",
    event = "VimEnter",
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
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
end)
