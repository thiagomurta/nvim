return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "folke/tokyonight.nvim" },
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        theme = "auto",
        globalstatus = true,  -- barra única (igual VSCode)
        section_separators = "",
        component_separators = "",
      },

      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return " " .. str
            end,
          },
        },

        lualine_b = {
  		{ "branch", icon = "" },
		  "diff",
		},

        lualine_c = {
          {
            "filename",
            path = 1, -- mostra caminho relativo
          },
        },

        lualine_x = {
          {
            "diagnostics",
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = "󰌵 ",
            },
          },
        },

        lualine_y = {
          "filetype",
        },

        lualine_z = {
          "location", -- linha:coluna
        },
      },
    })
  end,
}
