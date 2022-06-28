local lsp = require 'feline.providers.lsp'
local vi_mode_utils = require 'feline.providers.vi_mode'
local colors = require 'colors'


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
