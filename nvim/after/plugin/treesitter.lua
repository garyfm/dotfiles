require('nvim-treesitter').install { 'rust', 'c', 'cpp' }


vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "lua", "vim", "query", "rust" },
    callback = function(ev)
        local max_filesize = 100 * 1024
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(ev.buf))
        if ok and stats and stats.size > max_filesize then
            return
        end
        vim.treesitter.start(ev.buf)
    end,
})
