return {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
        show_help = "yes",
        debug = false,
        disable_extra_info = 'no',
        prompts = {
            -- Code-related prompts
            Explain = "Please explain how the following code works.",
            Review = "Please review the following code and provide suggestions for improvement.",
            Tests = "Please explain how the selected code works, then generate unit tests for it.",
            Refactor = "Please refactor the following code to improve its clarity and readability.",
            FixCode = "Please fix the following code to make it work as intended.",
            BetterNamings = "Please provide better names for the following variables and functions.",
            Documentation = "Please provide documentation for the following code.",
            SwaggerApiDocs = "Please provide documentation for the following API using Swagger.",
            SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.",
            -- Text-related prompts
            Summarize = "Please summarize the following text.",
            Spelling = "Please correct any grammar and spelling errors in the following text.",
            Wording = "Please improve the grammar and wording of the following text.",
            Concise = "Please rewrite the following text to make it more concise.",
        }
    },
    build = function()
        vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
    end,
    event = "VeryLazy",
}
