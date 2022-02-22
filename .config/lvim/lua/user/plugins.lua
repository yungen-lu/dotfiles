local M = {}

M.config = function ()
  lvim.plugins = {
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },
    {
      "karb94/neoscroll.nvim",
      event = "WinScrolled",
      config = function ()
      require('neoscroll').setup{
        easing_function = "quadratic",
      }
      end
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      event = "BufRead",
      config = function ()
        require("user.indent_blankline").config()
      end
    },
    {
      "skywind3000/asynctasks.vim",
      requires = {
        { "skywind3000/asyncrun.vim" },
      },
      event = "BufRead",
    },
    {
      "simrat39/symbols-outline.nvim",
      event = "BufReadPost",
      cmd = "SymbolsOutline",
    },
    {
      "norcalli/nvim-colorizer.lua",
        config = function()
          require("colorizer").setup({ "*" }, {
              RGB = true, -- #RGB hex codes
              RRGGBB = true, -- #RRGGBB hex codes
              RRGGBBAA = true, -- #RRGGBBAA hex codes
              rgb_fn = true, -- CSS rgb() and rgba() functions
              hsl_fn = true, -- CSS hsl() and hsla() functions
              css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
              css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
              })
      end,
    },
  }
end

return M
