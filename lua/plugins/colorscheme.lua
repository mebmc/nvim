return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    background = {
      dark = 'wave',
    },
    colors = {
      palette = {
        -- Background colors
        sumiInk0 = '#161616',
        sumiInk1 = '#181818',
        sumiInk2 = '#1a1a1a',
        sumiInk3 = '#1F1F1F',
        sumiInk4 = '#2A2A2A',
        sumiInk5 = '#363636',
        sumiInk6 = '#545454',

        -- Popup and Floats
        waveBlue1 = '#322C47',
        waveBlue2 = '#4c4464',

        -- Diff and Git
        winterGreen = '#2B3328',
        winterYellow = '#49443C',
        winterRed = '#43242B',
        winterBlue = '#252535',
        autumnGreen = '#76A56A',
        autumnRed = '#C34043',
        autumnYellow = '#DCA561',

        -- Diag
        samuraiRed = '#E82424',
        roninYellow = '#FF9E3B',
        waveAqua1 = '#7E9CD8',
        dragonBlue = '#7FB4CA',

        -- Foreground and Comments
        oldWhite = '#C8C093',
        fujiWhite = '#F9E7C0',
        fujiGray = '#727169',
        oniViolet = '#BFA3E6',
        oniViolet2 = '#BCACDB',
        crystalBlue = '#8CABFF',
        springViolet1 = '#938AA9',
        springViolet2 = '#9CABCA',
        springBlue = '#7FC4EF',
        waveAqua2 = '#77BBDD',

        springGreen = '#98BB6C',
        boatYellow1 = '#938056',
        boatYellow2 = '#C0A36E',
        carpYellow = '#FFEE99',

        sakuraPink = '#D27E99',
        waveRed = '#E46876',
        peachRed = '#FF5D62',
        surimiOrange = '#FFAA44',
        katanaGray = '#717C7C',
      },
    },
  },
  config = function(_, opts)
    require('kanagawa').setup(opts)
    vim.cmd('colorscheme kanagawa')

    -- Custom diff colors
    vim.cmd([[
      autocmd VimEnter * hi DiffAdd guifg=#00FF00 guibg=#005500
      autocmd VimEnter * hi DiffDelete guifg=#FF0000 guibg=#550000
      autocmd VimEnter * hi DiffChange guifg=#CCCCCC guibg=#555555
      autocmd VimEnter * hi DiffText guifg=#00FF00 guibg=#005500
    ]])

    -- Custom border colors
    vim.cmd([[
      autocmd ColorScheme * hi NormalFloat guifg=#F9E7C0 guibg=#1F1F1F
      autocmd ColorScheme * hi FloatBorder guifg=#F9E7C0 guibg=#1F1F1F
    ]])

    -- Custom spell check colors
    vim.cmd([[
      autocmd ColorScheme * hi SpellBad gui=undercurl guifg=#FF0000 guibg=#550000
      autocmd ColorScheme * hi SpellBad cterm=underline ctermfg=#FF0000 ctermbg=#550000
    ]])
  end,
}
