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

M.show_random_quote = function ()
	local numQuotes = tableLength(M.quotes)
	math.randomseed(os.time())
	local index = math.random(numQuotes)
	print(vim.inspect(M.quotes[index]))
end

return M
