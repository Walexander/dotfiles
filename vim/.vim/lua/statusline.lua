local lsp = require 'feline.providers.lsp'
local vi_mode_utils = require 'feline.providers.vi_mode'
local colors = require 'colors'

local components = {
    active = {},
    inactive = {}
}

-- Insert three sections (left, mid and right) for the active statusline
local comps = require('feline.default_components')

table.insert(comps.statusline.icons.active[2], {
  left_sep = { ' ', 'vertical_bar' },
  provider = function()
    return tostring(#vim.api.nvim_list_wins())
    -- return vim.api.nvim_eval('coc#status()')
  end
})
comps.winbar.icons.active[1] = {
    {
        provider = {
          name = 'file_info',
          opts = {
            type = 'relative'
          },
        },
        hl = {
            fg = 'bg',
            bg = 'fg',
            style = 'bold',
        },
    },
}
require('feline').setup{
  components = comps.statusline.icons
}
require('feline').winbar.setup{
  default_bg = '#D0D0D0',
  default_fg= '#1F1F23'
}

local icons = {
    linux = ' ',
    macos = ' ',
    windows = ' ',
    errs = ' ',
    warns = ' ',
    infos = ' ',
    hints = ' ',
    lsp = ' ',
    git = ''
}

local components = require('feline.default_components').statusline.icons

require'feline'.setup {
    default_bg = colors.bg,
    default_fg = colors.fg,
    components = {
      statusline = components,
    },
    properties = properties,
}
