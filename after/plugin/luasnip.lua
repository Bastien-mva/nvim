local ls = require("luasnip")

vim.keymap.set({ "i", "s" }, "<a-j>", function()
          if ls.jumpable(-1) then
                            ls.jump(-1)
                                            end
                                                        end, { silent = true })


vim.keymap.set({ "i", "s" }, "<a-k>", function()
          if ls.expand_or_jumpable() then
                            ls.expand_or_jump()
                                            end
                                                        end, { silent = true })

vim.keymap.set("n", "<leader><leader>s", "<cmd> source ~/.config/nvim/after/plugin/luasnip.lua <CR>")

ls.snippets = {
    -- Available in any filetype 
    all = {ls.parser.parse_snippet("expand", "-- this is what was expanded!"),
}, 
lua = {
    -- Lua specific snippets go here
},  
}

