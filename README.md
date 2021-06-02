# smart-cursor.nvim

Save yourself some formatting and indenting when creating a new line.

Use treesitter for auto-indenting your cursor correctly on a new line.

## Installation

### `Paq.nvim`

```lua
paq{'winston0410/smart-cursor.nvim'}
```

## Configuration

By default no keymapping is set. You have to map `require('smart-cursor').indent_cursor()` to use this plugin.

### Example keybinding

#### Lua

```lua
vim.api.nvim_set_keymap('n', 'o',
		'o<cmd>lua require("smart-cursor").indent_cursor()<cr>',
		{silent = true, noremap = true})
```

#### Vim

```vim
nnoremap o o<esc><cmd>lua require('smart-cursor').indent_cursor()<cr>
```
