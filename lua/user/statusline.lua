-- function

_G.status_diagnostic = function ()
    local info = vim.b.coc_diagnostic_info or {}
    if vim.tbl_isempty(info) then return '' end
    
    local msgs = {}
    if info.error and info.error > 0 then table.insert(msgs, ' ' .. info.error) end
    if info.warning and info.warning > 0 then table.insert(msgs, '' .. info.warning) end
    if info.information and info.information > 0 then table.insert(msgs, ' ' .. info.information) end
    if info.hint and info.hint > 0 then table.insert(msgs, ' ' .. info.hint) end

    return table.concat(msgs, ' ') .. ' ' .. (vim.g.coc_status or '')
end

vim.opt.statusline = table.concat({
    ' ',
    '%t',
    ' [%{WebDevIconsGetFileTypeSymbol()}]',
    '%m',
    ' %= ',
    '%{v:lua.status_diagnostic()}',
    ' %<',
    '%{get(g:,"coc_git_status","")}',
    '%{get(b:,"coc_git_status","")}',
    '%{get(b:,"coc_git_blame","")}',
    ' %y',
    ' | %l:%c'
})
