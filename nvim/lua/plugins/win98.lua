return {
  -- 1. El Esquema de Colores Win98
  {
    "B0neHe4d/win98.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("win98").setup({
        transparent_background = false,
      })
      vim.cmd([[colorscheme win98]])
    end,
  },

  -- 2. Lualine con Efecto de Bisel 3D (Bordes de Windows 98)
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      -- Paleta de colores técnica de Win98
      local w98_gray = "#c0c0c0" -- Fondo gris estándar
      local w98_blue = "#000080" -- Azul barra de título
      local w98_white = "#ffffff" -- Borde de luz (arriba/izquierda)
      local w98_dark_gray = "#808080" -- Borde de sombra (abajo/derecha)
      local w98_black = "#000000"

      return {
        options = {
          theme = "auto",
          -- Usamos caracteres de bloque para simular el relieve en los bordes
          section_separators = { left = "", right = "" }, -- O dejarlos vacíos "" para look plano
          component_separators = { left = "│", right = "│" },
          globalstatus = true,
        },
        sections = {
          lualine_a = {
            {
              "mode",
              fmt = string.upper,
              -- Efecto "Botón Hundido" para el modo actual
              color = { bg = w98_blue, fg = w98_white, gui = "bold" },
            },
          },
          lualine_b = {
            {
              "branch",
              -- Gris con texto negro (estilo botón desactivado/barra)
              color = { bg = w98_gray, fg = w98_black, gui = "bold" },
            },
          },
          lualine_c = {
            {
              "filename",
              path = 1,
              color = { bg = w98_gray, fg = w98_black },
            },
          },
          lualine_x = {
            { "encoding", color = { fg = w98_black } },
            { "fileformat", color = { fg = w98_black } },
            { "filetype", color = { fg = w98_black } },
          },
          lualine_y = {
            { "progress", color = { bg = w98_gray, fg = w98_black } },
          },
          lualine_z = {
            {
              "location",
              -- Simula la esquina de la barra de tareas
              color = { bg = w98_blue, fg = w98_white, gui = "bold" },
            },
          },
        },
        -- Aplicamos el "borde" visual mediante la personalización del winbar o tabline si fuera necesario
      }
    end,
  },
}
