return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
        workspaces = {
            {
                name = "DevNote",
                path = "~/Documents/DevNote",
            },
        },
        ui = {
            enable = false,
        },
        checkbox = {
            enabled = true,
            create_new = true,
            order = { " ", "/", "-", ">", "!", "x" },
        },
    },
}

-- [ ] Not started
-- [/] Half Done/In-progress
-- [<] On hold/Scheduling
-- [-] Dropped/Cancelled
-- [>] Transferred/Forwarded
-- [?] Doubt/Question
-- [!] Important
-- [x] Completed
