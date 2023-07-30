require('bastien.packer')
require('bastien.set')
require('bastien.cmp')
require('bastien.keymap')
require('luasnip.loaders.from_snipmate').lazy_load()
require("mason").setup({
        PATH = "prepend", -- "skip" seems to cause the spawning error
    })
