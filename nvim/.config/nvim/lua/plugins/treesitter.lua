return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()

	local settings = {
	    ensure_installed = { "c", "lua", "python", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

	    sync_install = false,

	    auto_install = true,

	    highlight = {
		enable = true,

		disable = function(lang, buf)
		    local max_filesize = 100 * 1024 -- 100 KB
		    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
		    if ok and stats and stats.size > max_filesize then
			return true
		    end
		end,
	    },
	}

	require "nvim-treesitter.configs".setup(settings)
    end
}
