" call plug#begin('~/.local/share/nvim/site/autoload')
call plug#begin('~/.vim/plugged')

"""
""" Essential Plugins.
"""

" THEME: Dracula Theme.
Plug 'dracula/vim', { 'as': 'dracula' }

" -----------------------------------------------
"
" GENERAL USAGE:
" toggle between relative / actual line number.
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" linting tool.
Plug 'dense-analysis/ale'

" management, eg.save/open workspace.
Plug 'mhinz/vim-startify'

" natural scroll motion. 
Plug 'yuttie/comfortable-motion.vim'
" Use lightline to make startup time faster
Plug 'itchyny/lightline.vim'

" Move lines and selections with alt + {hjkl}
Plug 'matze/vim-move'

" Fuzzy Finder
" :Rg for ripgrep, :Ag for silver searcher
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Surround (cs'" to change surrounding '' to "")
Plug 'tpope/vim-surround'

" Tab Expansions for HTML files.
Plug 'mattn/emmet-vim'

" Repeat the surround command using the dot (.) command.
Plug 'tpope/vim-repeat'

" Follow the EditorConfig configuration.
" Depend on editorconfig to be installed.
Plug 'editorconfig/editorconfig-vim'

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'scrooloose/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}

" Add file icons to other plugins (e.g. NERDTree, Airline)
" Always load this as the very last one!
Plug 'ryanoasis/vim-devicons'

" --------------------------------------------------

" SPECIFIC: language support.
" ----- Vue --------
Plug 'posva/vim-vue'

"----TypeScript-----
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'

"-----Rust----------
Plug 'rust-lang/rust.vim'
" ----------------------------------------------------

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

:set number relativenumber

call plug#end()
