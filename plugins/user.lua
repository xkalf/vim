return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  'akinsho/toggleterm.nvim',
  config = function()
    local powershell_options = {
      shell = "pwsh",
      shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
      shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
      shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
      shellquote = "",
      shellxquote = "",
    }

    for option, value in pairs(powershell_options) do
      vim.opt[option] = value
    end
    require('toggleterm').setup {
        size = 10,
        open_mapping = [[<F7>]],
        shading_factor = 2,
        direction = "float",
        float_opts = {
          border = "curved",
          highlights = { border = "Normal", background = "Normal" },
        },
    }

  end,
}
