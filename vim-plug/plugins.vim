if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " Theme
  Plug 'phanviet/vim-monokai-pro'
  Plug 'gruvbox-community/gruvbox'
  Plug 'sainnhe/gruvbox-material'

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " File Explorer with Icons
  " Plug 'preservim/nerdtree'
  " Plug 'Xuyuanp/nerdtree-git-plugin'
  " Plug 'ryanoasis/vim-devicons'

  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  Plug 'ianks/vim-tsx'
  Plug 'pangloss/vim-javascript'                                                                                                                                                          
  Plug 'leafgarland/typescript-vim'                                                                                                                                                       
  Plug 'maxmellon/vim-jsx-pretty'                                                                                                                                                         
  Plug 'peitalin/vim-jsx-typescript'                                                                                                                                                      
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }                                                                                                                    
  Plug 'jparise/vim-graphql'
  Plug 'pantharshit00/vim-prisma'
  Plug 'theprimeagen/vim-be-good', {'do': './install.sh'}

  Plug 'dart-lang/dart-vim-plugin'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'evanleck/vim-svelte'

  Plug 'pangloss/vim-javascript'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'prettier/vim-prettier', { 'do': 'npm install' }

  " Prettier Settings
  let g:prettier#quickfix_enabled = 0
  let g:prettier#autoformat_require_pragma = 0
  au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync


call plug#end()
