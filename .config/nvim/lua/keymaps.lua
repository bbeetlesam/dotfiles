local keymaps = {}
local map = vim.keymap.set

-- vim.keymap.set(<mode>, <keymaps>, <command>, {optionals})
-- "i" for insert mode, "n" for normal, "v" for visual
function keymaps.general()
  map("i", "<C-s>", "<Esc>:w<CR>a", {desc="saved"}) -- ctrl+s to save while in insert mode
  map("i", "<C-S-s>", "<Esc>:w<CR>", {desc="saved and enter normal mode"}) -- ctrl+shift+s to save and exit insert mode
end

-- vscode keymaps (cause i alr get used to vscode's keymaps lol)
function keymaps.vscode()
  -- ctrl+alt+up/down to swap lines
  map("i", "<C-A-Up>", "<Esc>:m .-2<CR>==gi", {desc="line moved up"})
  map("i", "<C-A-Down>", "<Esc>:m .+1<CR>==gi", {desc="line moved down"})
  map("i", "<C-S-k>", "<Esc>:d<CR>a", {desc="deleted a line"}) -- ctrl+shift+k to delete a line
end  

return keymaps
