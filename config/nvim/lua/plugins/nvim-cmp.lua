return {
    "hrsh7th/nvim-cmp",
    config = function()
        local cmp = require'cmp'
        local luasnip = require("luasnip")

        cmp.setup({
          snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
              require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            end,
          },
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          },
          experimental = {
            ghost_text = true,
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-k>'] = cmp.mapping.scroll_docs(-4),
            ['<C-j>'] = cmp.mapping.scroll_docs(4),
            -- ['<C-Tab><Right>'] = cmp.mapping.complete(),
            ['<C-a>'] = cmp.mapping.abort(),
            -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            ['<Right>'] = cmp.mapping(function(fallback)
                 if cmp.visible() and cmp.get_active_entry() then
                     if luasnip.expandable() then
                         luasnip.expand()
                     else
                         cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                     end
                 else
                     if cmp.visible() then
                         if luasnip.expandable() then
                             luasnip.expand()
                         else
                             cmp.confirm({ select = true, })
                         end
                     else
                         fallback()
                     end
                 end
            end, { "i", "s" }),
            -- ['<CR>'] = cmp.mapping(function(fallback)
            --     if cmp.visible() then
            --         if luasnip.expandable() then
            --             luasnip.expand()
            --         else
            --             cmp.confirm({
            --                 select = true,
            --             })
            --         end
            --     else
            --         fallback()
            --     end
            -- end),
            ['<CR>'] = cmp.mapping({
               i = function(fallback)
                 if cmp.visible() and cmp.get_active_entry() then
                     if luasnip.expandable() then
                         luasnip.expand()
                     else
                         cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                     end
                 else
                   fallback()
                 end
               end,
               s = cmp.mapping.confirm({ select = true }),
               c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
            }),

            ["<Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.locally_jumpable(1) then
                luasnip.jump(1)
              else
                fallback()
              end
            end, { "i", "s" }),

            ["<S-Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end, { "i", "s" }),
          }),
          sources = cmp.config.sources({
            { name = 'luasnip' }, -- For luasnip users.
            { name = 'nvim_lsp' },
            { name = 'path' },
          }, {
            { name = 'buffer' },
          })
        })

        -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline({ '/', '?' }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
        })

        -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({
            { name = 'path' }
          }, {
            { name = 'cmdline' }
          }),
          matching = { disallow_symbol_nonprefix_matching = false }
        })

        -- If you want insert `(` after select function or method item
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        cmp.event:on(
          'confirm_done',
          cmp_autopairs.on_confirm_done()
        )
    end
}
