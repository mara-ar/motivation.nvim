# Motivation.nvim

### A Nearly Useless NeoVim Plugin...

Motivation.nvim is a non-serious Neovim plugin that simply displays motivational quotes to you if you are every in the need of motivation!

**Lazy.nvim Installation**
```lua
{
    "Abhi6/motivation.nvim",
    lazy = true,
    config = function()
        require'motivation'.setup({
            quotes = {
                "your quotes",
            }
        })
    end,
    dependencies = {
        "MunifTanjim/nui.nvim" -- floating window functionality
    }
```

**Mappings**\
```:MotivationalQuote```\
Will display a randomly selected quote for a previously configured table of quotes

**Configuration**
```lua
require'motivation'.setup {
    quotes = {
        -- strings of quotes that you want here
        "Keep going!",
        "Programming is more about debugging than it is about coding!"
    }
}
```

**Default Configuration**
```lua
require'motivation'.setup({
    quotes = {
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
})
```


#### Inspiration
Found a previous plugin similar to this (cannot remember the exact name, unfortunately) but the quote would only be display at the bottom of the screen (where we get output from commands in NeoVim). \
So this plugin shows the quote as a floating window instead!
