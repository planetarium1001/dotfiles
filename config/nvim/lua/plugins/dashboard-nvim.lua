return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    opts = function()
        local logo = [[
██████╗ ██╗      █████╗ ███╗   ██╗███████╗████████╗ █████╗ ██████╗ ██╗██╗   ██╗███╗   ███╗
██╔══██╗██║     ██╔══██╗████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║██║   ██║████╗ ████║
██████╔╝██║     ███████║██╔██╗ ██║█████╗     ██║   ███████║██████╔╝██║██║   ██║██╔████╔██║
██╔═══╝ ██║     ██╔══██║██║╚██╗██║██╔══╝     ██║   ██╔══██║██╔══██╗██║██║   ██║██║╚██╔╝██║
██║     ███████╗██║  ██║██║ ╚████║███████╗   ██║   ██║  ██║██║  ██║██║╚██████╔╝██║ ╚═╝ ██║
╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝     ╚═╝
        ]]
        -- https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=Planetarium
        logo = string.rep("\n", 8) .. logo .. "\n\n"

        local opts = {
            theme = 'hyper', -- theme is doom and hyper default is hyper
            config = {
                header = vim.split(logo, "\n"),
                center = {
                    {
                        desc = "Find File ",
                        key = "f",
                        icon = " ",
                        action = "Telescope find_files",
                        group = "@markup.heading.1.markdown",
                    },
                    {
                        desc = "New File ",
                        key = "n",
                        icon = " ",
                        action = "enew",
                        group = "@markup.heading.3.markdown",
                    },
                    {
                        desc = "Reload Session ",
                        key = "r",
                        icon = " ",
                        action = "SessionLoad",
                        group = "@markup.heading.4.markdown",
                    },
                    {
                        desc = "Exit ",
                        key = "q",
                        icon = " ",
                        action = "exit",
                        group = "@markup.heading.6.markdown",
                    },
                },
                footer = {
                        "",
                },
                vertical_center = false, -- Center the Dashboard on the vertical (from top to bottom)
            },                           -- config used for theme
        }
        return opts
    end,
}
