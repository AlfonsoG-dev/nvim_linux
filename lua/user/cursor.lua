local hl = vim.api.nvim_set_hl

-- coc menu colors
hl(0, "CocMenuSel", {bg = "#3c3836", fg = "#ebdbb2"})
hl(0, "CocPumVirtualText", {bg="#282828", fg="#928374"})

-- line and column
hl(0, "CursorLine", {bg="#424d5e", bold=true})
hl(0, "ColorColumn", {bg="#424d5e"})
hl(0, 'CursorColumn', {fg="White", bg="#37475e", bold=true})
