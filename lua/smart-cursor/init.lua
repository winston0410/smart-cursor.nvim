local ts_indent = require 'nvim-treesitter.indent'

local function indent_cursor()
	local current_line = vim.api.nvim_win_get_cursor(0)[1]
	local indent_number = ts_indent.get_indent(current_line)

	if indent_number == 0 then
		return
	end

	local indent = string.rep(" ", indent_number)

	vim.api.nvim_buf_set_lines(0, current_line - 1, current_line, false, { indent })

	vim.api.nvim_win_set_cursor(0, { current_line, indent_number })
end

return {
	indent_cursor = indent_cursor
}
