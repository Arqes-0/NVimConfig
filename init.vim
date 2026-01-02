call plug#begin('~/.local/share/nvim/plugged')

" Complemento para nvim-treesitter (resaltado de sintaxis)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ryanoasis/vim-devicons'
Plug 'folke/tokyonight.nvim'
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
-- Configuración de lualine
local status_lualine, lualine = pcall(require, "lualine")
if status_lualine then
    lualine.setup()
end

-- Configuración de treesitter
local status_ts, ts = pcall(require, "nvim-treesitter.configs")
if status_ts then
    ts.setup {
      ensure_installed = { "c", "lua", "vim", "vimdoc" }, -- Recomiendo añadir lua y vim
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
else
    print("Treesitter no encontrado, ejecuta :PlugInstall")
end
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
" Para gestionar los paquetes de COC
let g:coc_global_extensions = [
  \ 'coc-pyright', 
  \ 'coc-snippets',
  \ 'coc-clangd',
  \ 'coc-prettier'
  \ ]



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
set clipboard=unnamedplus
" Copiar al portapapeles
vmap <C-c> "+y
" Cortar al portapapeles
vmap <C-x> "+d
" Pegar desde el portapapeles
nmap <C-v> "+p
imap <C-v> <C-r>+
