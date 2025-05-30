local fn = vim.fn

-- Automatically install packer
local lazypath = fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    spec = LAZY_PLUGIN_SPEC,
    install = {
        colorscheme = { "darkplus", "default" },
    },
    ui = {
        border = "rounded",
    },
    change_detection = {
        enabled = true,
        notify = false,
    },
}
