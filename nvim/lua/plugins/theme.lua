return {
  {
    "NLKNguyen/papercolor-theme",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.background = "light" -- Esto es vital para el look Win95
      vim.cmd([[colorscheme PaperColor]])
    end,
  },
}
