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
  Plug 'joshdick/onedark.vim'

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

  Plug 'ianks/vim-tsx'
  Plug 'pangloss/vim-javascript'                                                                                                                                                          
  Plug 'leafgarland/typescript-vim'                                                                                                                                                       
  Plug 'maxmellon/vim-jsx-pretty'                                                                                                                                                         
  Plug 'peitalin/vim-jsx-typescript'                                                                                                                                                      
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }                                                                                                                    
  Plug 'jparise/vim-graphql'
  Plug 'pantharshit00/vim-prisma'
call plug#end()
