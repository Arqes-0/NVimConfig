call plug#begin('~/.local/share/nvim/plugged')

" Complemento para nvim-treesitter (resaltado de sintaxis)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ryanoasis/vim-devicons'
Plug 'folke/tokyonight.nvim'  " Esquema de colores tokyonight
Plug 'preservim/nerdtree'  " Complemento NerdTree
Plug 'nvim-lualine/lualine.nvim' " Para lineas y columnas
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'navarasu/onedark.nvim'
Plug 'itchyny/lightline.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/goyo.vim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

lua << EOF

require('lualine').setup()
require'nvim-treesitter.configs'.setup {
  ensure_installed = "c",  -- Esto asegura que el resaltado de C esté disponible
  highlight = {
    enable = true,  -- Habilita el resaltado de sintaxis
    additional_vim_regex_highlighting = false,
  },
}
EOF
let g:lightline = {
\   'colorscheme': 'one',
\   'active': {
\     'left': [ ['mode', 'paste'], ['readonly', 'filename', 'modified'] ]
\   },
\   'inactive': {
\     'left': [ ['filename'] ]
\   },
\}



"Mis COSITOS
colorscheme tokyonight-night " Cambiar al esquema de colores 'tokyonight'
set number
nnoremap <C-d> :NERDTreeToggle<CR> 
"Para poner el coso del Barra horizontal
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
command! ToggleHints :CocCommand document.toggleInlayHint
nnoremap <C-b> :ToggleHints<CR>
