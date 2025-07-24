return {
    'milanglacier/minuet-ai.nvim',
    -- event = "VeryLazy",
    lazy = false,
    depends = {
        'nvim-lua/plenary.nvim',
        'hrsh7th/nvim-cmp',
    },
    opts = {
        -- Your configuration options here
        cmp = {
            enable_auto_complete = false,
        },
        blink = {
            enable_auto_complete = false,
        },
        -- virtualtext = {
        --     -- Specify the filetypes to enable automatic virtual text completion,
        --     -- e.g., { 'python', 'lua' }. Note that you can still invoke manual
        --     -- completion even if the filetype is not on your auto_trigger_ft list.
        --     -- auto_trigger_ft = { '*' },
        --     auto_trigger_ft = { },
        --     -- specify file types where automatic virtual text completion shoul be
        --     -- disabled. This option is useful when auto-completion is enabled for
        --     -- all file types i.e., when auto_trigger_ft = { '*' }
        --     auto_trigger_ignore_ft = {},
        --     keymap = {
        --         -- accept = nil,
        --         -- accept_line = nil,
        --         -- accept_n_lines = nil,
        --         -- -- Cycle to next completion item, or manually invoke completion
        --         -- next = nil,
        --         -- -- Cycle to prev completion item, or manually invoke completion
        --         -- prev = nil,
        --         -- dismiss = nil,
        --
        --         accept = "<S-Tab>",
        --         -- accept_word = "<C-s>",
        --         accept_line = "<C-y>",
        --         next = "<C-e>",
        --         prev = "<C-w>",
        --         dismiss = "<C-]>",
        --     },
        -- },

        provider = 'openai_fim_compatible',
        add_single_line_entry = true,
        n_completions = 1, -- recommend for local model for resource saving
        -- I recommend you start with a small context window firstly, and gradually
        -- increase it based on your local computing power.
        context_window = 512,
        request_timeout = 5,
        debounce = 400,
        throttle = 500,
        notify = 'warn',
        -- notify = 'debug',

        provider_options = {
            openai_compatible = {
                model = 'qwen2.5-coder:7b',
                -- model = 'qwen2.5-coder:32b',
                -- system = "see [System Prompt] section for the default value",
                -- few_shots = "see [System Prompt] section for the default value",
                -- chat_input = "See [Prompt Section for default value]",
                end_point = 'http://127.0.0.1:11434/v1/chat/completions',
                api_key = 'TERM',
                name = 'Ollama',
                stream = true,
                optional = {
                    stop = { '\n\n' },
                    max_tokens = 256,
                },
            },
            openai_fim_compatible = {
                -- model = 'deepseek-coder-v2:16b',
                model = 'qwen2.5-coder:7b',
                end_point = 'http://127.0.0.1:11434/v1/completions',
                api_key = 'TERM',
                name = 'Ollama',
                stream = true,
                optional = {
                    max_tokens = 256,
                    top_p = 0.9,
                    stop = { '\n\n' },
                },
            },
        },
    }
}
