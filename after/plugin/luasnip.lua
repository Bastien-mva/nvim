local ls = require("luasnip")

vim.keymap.set({ "i", "s" }, "<C-l>", function()
          if ls.jumpable(1) then
                            ls.jump(1)
                                            end
                                                        end, { silent = true })





