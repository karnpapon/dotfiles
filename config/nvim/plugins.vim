" call plug#begin('~/.local/share/nvim/site/autoload')
call plug#begin('~/.vim/plugged')
" -----------------------------------------------
"""
""" Essential Plugins.
"""

" THEME: Dracula Theme.
"Plug 'dracula/vim', { 'as': 'dracula' }

" dark vscode theme.
Plug 'tomasiser/vim-code-dark'

" iceberg theme.
Plug 'cocopon/iceberg.vim'

" -----------------------------------------------
"
" GENERAL USAGE:
" toggle between relative / actual line number.
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" CSV Viwer.
Plug 'chrisbra/csv.vim'

" linting tool.
Plug 'dense-analysis/ale'

" multiple selection.
Plug 'terryma/vim-multiple-cursors'

" management, eg.save/open workspace.
Plug 'mhinz/vim-startify'

" bracket colorizer.
Plug 'luochen1990/rainbow'

" git integration.
Plug 'airblade/vim-gitgutter'

" natural scroll motion. 
" Plug 'yuttie/comfortable-motion.vim'

" Use lightline to make startup time faster
Plug 'itchyny/lightline.vim'

" Move lines and selections with alt + {hjkl}
Plug 'matze/vim-move'

" indent line for nvim
Plug 'Yggdroot/indentLine'

" Fuzzy Finder
" :Rg for ripgrep, :Ag for silver searcher
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Surround (cs'" to change surrounding '' to "")
Plug 'tpope/vim-surround'

" code formatting.
Plug 'sbdchd/neoformat'

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

" ultisnips for snippets
Plug 'SirVer/ultisnips'

" --------------------------------------------------

" SPECIFIC: language support.
" ----- Vue --------
Plug 'posva/vim-vue'

"----TypeScript-----
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" For Denite features
Plug 'Shougo/denite.nvim'

"-----Rust----------
Plug 'rust-lang/rust.vim'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

"-----SuperCollider-----
Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }

" autoclose pairs.
Plug 'raimondi/delimitmate'

" ----------------------------------------------------

:set number relativenumber

call plug#end()
