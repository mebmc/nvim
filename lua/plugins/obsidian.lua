return {
    "epwalsh/obsidian.nvim",
    event = { "BufReadPre " .. vim.fn.expand "~" .. "~/git/technotes/**.md" },
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
    -- event = { "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- Optional, for completion.
        "hrsh7th/nvim-cmp",

        -- Optional, for search and quick-switch functionality.
        "nvim-telescope/telescope.nvim",

        -- Optional, an alternative to telescope for search and quick-switch functionality.
        -- "ibhagwan/fzf-lua"

        -- Optional, another alternative to telescope for search and quick-switch functionality.
        -- "junegunn/fzf",
        -- "junegunn/fzf.vim"

        -- Optional, alternative to nvim-treesitter for syntax highlighting.
        "godlygeek/tabular",
        "preservim/vim-markdown",
    },
    cmd = {
        "ObsidianNew", "ObsidianOpen", "ObsidianSearch", "ObsidianQuickSwitch", "ObsidianLink", "ObsidianLinkNew",
        "ObsidianFollowLink", "ObsidianTemplate", "ObsidianBacklinks", "ObsidianToday", "ObsidianYesterday",
    },
    keys = {
        { "<leader>Ob", "<cmd>ObsidianBacklinks<cr>",   desc = "Obsidian Backlinks" },
        { "<leader>Ot", "<cmd>ObsidianToday<cr>",       desc = "Obsidian Today" },
        { "<leader>Oy", "<cmd>ObsidianYesterday<cr>",   desc = "Obsidian Yesterday" },
        { "<leader>Oo", "<cmd>ObsidianOpen<cr>",        desc = "Obsidian Open" },
        { "<leader>On", "<cmd>ObsidianNew<cr>",         desc = "Obsidian New" },
        { "<leader>Os", "<cmd>ObsidianSearch<cr>",      desc = "Obsidian Search" },
        { "<leader>Oq", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian Quick Switch" },
        { "<leader>Ol", "<cmd>ObsidianLink<cr>",        desc = "Obsidian Link" },
        { "<leader>OL", "<cmd>ObsidianLinkNew<cr>",     desc = "Obsidian Link New" },
        { "<leader>Of", "<cmd>ObsidianFollowLink<cr>",  desc = "Obsidian Follow Link" },
        { "<leader>OT", "<cmd>ObsidianTemplate<cr>",    desc = "Obsidian Template" },
    },
    opts = {
        new_notes_location = "current_dir",

        dir = "~/git/technotes", -- no need to call 'vim.fn.expand' here

        -- Optional, if you keep notes in a specific subdirectory of your vault.
        notes_subdir = "notes",

        -- Optional, set the log level for Obsidian. This is an integer corresponding to one of the log
        -- levels defined by "vim.log.levels.*" or nil, which is equivalent to DEBUG (1).
        log_level = vim.log.levels.DEBUG,

        daily_notes = {
            -- Optional, if you keep daily notes in a separate directory.
            folder = "notes/dailies",
            -- Optional, if you want to change the date format for daily notes.
            date_format = "%Y-%m-%d"
        },

        -- Optional, completion.
        completion = {
            -- If using nvim-cmp, otherwise set to false
            nvim_cmp = true,
            -- Trigger completion at 2 chars
            min_chars = 2,
            -- Where to put new notes created from completion. Valid options are
            --  * "current_dir" - put new notes in same directory as the current buffer.
            --  * "notes_subdir" - put new notes in the default notes subdirectory.
        },

        -- Optional, customize how names/IDs for new notes are created.
        note_id_func = function(title)
            -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
            -- In this case a note with the title 'My new note' will given an ID that looks
            -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
            local suffix = ""
            if title ~= nil then
                -- If title is given, transform it into valid file name.
                suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                -- If title is nil, just add 4 random uppercase letters to the suffix.
                for _ = 1, 4 do
                    suffix = suffix .. string.char(math.random(65, 90))
                end
            end
            return tostring(os.time()) .. "-" .. suffix
        end,

        -- Optional, set to true if you don't want Obsidian to manage frontmatter.
        disable_frontmatter = false,

        -- Optional, alternatively you can customize the frontmatter data.
        note_frontmatter_func = function(note)
            -- This is equivalent to the default frontmatter function.
            local out = { id = note.id, aliases = note.aliases, tags = note.tags }
            -- `note.metadata` contains any manually added fields in the frontmatter.
            -- So here we just make sure those fields are kept in the frontmatter.
            if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
                for k, v in pairs(note.metadata) do
                    out[k] = v
                end
            end
            return out
        end,

        -- Optional, for templates (see below).
        templates = {
            subdir = "templates",
            date_format = "%Y-%m-%d-%a",
            time_format = "%H:%M",
        },

        -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
        -- URL it will be ignored but you can customize this behavior here.
        follow_url_func = function(url)
            -- Open the URL in the default web browser.
            vim.fn.jobstart({ "open", url }) -- Mac OS
            -- vim.fn.jobstart({"xdg-open", url})  -- linux
        end,

        -- Optional, set to true if you use the Obsidian Advanced URI plugin.
        -- https://github.com/Vinzent03/obsidian-advanced-uri
        use_advanced_uri = true,

        -- Optional, set to true to force ':ObsidianOpen' to bring the app to the foreground.
        open_app_foreground = false,

        -- Optional, by default commands like `:ObsidianSearch` will attempt to use
        -- telescope.nvim, fzf-lua, and fzf.nvim (in that order), and use the
        -- first one they find. By setting this option to your preferred
        -- finder you can attempt it first. Note that if the specified finder
        -- is not installed, or if it the command does not support it, the
        -- remaining finders will be attempted in the original order.
        finder = "telescope.nvim",

        ui = {
            enable = false,
        }
    },
    config = function(_, opts)
        require("obsidian").setup(opts)

        -- Optional, override the 'gf' keymap to utilize Obsidian's search functionality.
        -- see also: 'follow_url_func' config option below.
        vim.keymap.set("n", "gf", function()
            if require("obsidian").util.cursor_on_markdown_link() then
                return "<cmd>ObsidianFollowLink<CR>"
            else
                return "gf"
            end
        end, { noremap = false, expr = true })
    end,
}
