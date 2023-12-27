vim.opt.termguicolors = true

local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local mocha = require("catppuccin.palettes").get_palette "mocha"

function SetColor(color)
  color = color or "catppuccin"
  vim.cmd.colorscheme "catppuccin"
end

SetColor()

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

--
-- require("tokyonight").setup({
--   on_highlights = function(hl, c)
--     local prompt = "#2d3149"
--     hl.TelescopeNormal = {
--       bg = c.bg_dark,
--       fg = c.fg_dark,
--     }
--     hl.TelescopeBorder = {
--       bg = c.bg_dark,
--       fg = c.bg_dark,
--     }
--     hl.TelescopePromptNormal = {
--       bg = prompt,
--     }
--     hl.TelescopePromptBorder = {
--       bg = prompt,
--       fg = prompt,
--     }
--     hl.TelescopePromptTitle = {
--       bg = prompt,
--       fg = prompt,
--     }
--     hl.TelescopePreviewTitle = {
--       bg = c.bg_dark,
--       fg = c.bg_dark,
--     }
--     hl.TelescopeResultsTitle = {
--       bg = c.bg_dark,
--       fg = c.bg_dark,
--     }
--   end,
-- })
