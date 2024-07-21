return {
    'echasnovski/mini.nvim',
    event = 'VeryLazy',

    config = function()
        -- require('mini.animate').setup()
        require('mini.hipatterns').setup()
        -- require('mini.hues').setup({
        --     background = '#ff0000',
        --     foreground = '#00ff00',
        -- })
        require('mini.notify').setup()

        require('mini.ai').setup()
        require('mini.operators').setup()
        require('mini.pairs').setup()
        require('mini.surround').setup()

        -- require('mini.move').setup()
        require('mini.comment').setup()

        require('mini.trailspace').setup({
            only_in_normal_buffers = true,
        })
    end
}
