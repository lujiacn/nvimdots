require("bufferline").setup{
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = function()
                    return vim.fn.getcwd()
                end,
                highlight = "Directory",
                text_align = "left"
            }
        }
    }
}
-- setup lualine
require('lualine').setup{}
require('nvim_comment').setup()
require('lspsaga').init_lsp_saga()

require('nvim-autopairs').setup()
require('plugins-config.lsp')
require('plugins-config.cmp')
require('lspsaga').setup{}
