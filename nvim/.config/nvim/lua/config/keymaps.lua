vim.g.mapleader = " " -- 主键

local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "<Leader>w", ":w<CR>")
keymap.set("n", "<Leader>q", ":q<CR>")
keymap.set("n", "<Leader>x", ":x<CR>")
keymap.set("n", "<Leader>e", "::NvimTreeToggle<CR>")
keymap.set("n", "<C-n>", ":nohl<CR>")
keymap.set("n", "<Leader>v", "<C-w>v") -- 垂直分割窗口
keymap.set("n", "<Leader>s", "<C-w>s") -- 水平分割窗口
keymap.set("n", "<C-l>", "<C-w>l") -- 窗口内右移动
keymap.set("n", "<C-h>", "<C-w>h") -- 窗口内左移动
keymap.set("n", "<C-k>", "<C-w>k") -- 窗口内上移动
keymap.set("n", "<C-j>", "<C-w>j") -- 窗口内下移动
keymap.set("n", "<Leader>[", "<C-o>") -- 回退上次位置
keymap.set("n", "<Leader>]", "<C-i>") -- 跳回更新位置

-- 可视行移动
keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
