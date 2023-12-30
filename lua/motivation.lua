local M = {}

M.quotes = {
	"The only way to do great work is to love what you do. - Steve Jobs",
	"Believe you can and you're halfway there. - Theodore Roosevelt",
	"Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
	"Your time is limited, don't waste it living someone else's life. - Steve Jobs",
	"The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
	"Strive not to be a success, but rather to be of value. - Albert Einstein",
	"The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
	"It does not matter how slowly you go as long as you do not stop. - Confucius",
	"The best way to predict the future is to create it. - Peter Drucker",
	"The only person you are destined to become is the person you decide to be. - Ralph Waldo Emerson"
}

M.setup = function (opts)
	if opts then
		M.quotes = opts.quotes
	end
end

local function tableLength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end

M.get_random_quote = function ()
	local numQuotes = tableLength(M.quotes)
	math.randomseed(os.time())
	local index = math.random(numQuotes)
	return (vim.inspect(M.quotes[index]))
end

M.show_quote = function()
	local message = M.get_random_quote()
	local Popup = require("nui.popup")
	local event = require("nui.utils.autocmd").event

	local popup = Popup({
		enter = true,
		focusable = false,
		border = {
			style = "rounded",
		},
		position = "50%",
		size = {
			width = "25%",
			height = "10%",
		},
	})

	-- mount/open the component
	popup:mount()

	-- unmount component when cursor leaves buffer
	popup:on(event.BufLeave, function()
		popup:unmount()
	end)

	vim.api.nvim_buf_set_keymap(popup.bufnr, "n", "q", ":q<CR>", {silent = true})

	-- set content
	vim.api.nvim_buf_set_lines(popup.bufnr, 0, 1, false, { message })
end

return M
