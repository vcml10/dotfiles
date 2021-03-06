call plug#begin('~/.vim/plugged')

" code
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
" Plugin 'posva/vim-vue'
Plug 'hashivim/vim-terraform'
Plug 'dense-analysis/ale'
Plug 'saltstack/salt-vim'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'honza/vim-snippets'

" interface
Plug 'itchyny/lightline.vim'
" Plugin 'hashivim/vim-terraform'
"
" others
Plug 'junegunn/fzf'

" PHP stuff
" Plugin 'shougo/vimproc.vim'
" Plugin 'shougo/unite.vim'
" Plugin 'm2mdas/phpcomplete-extended'
" Bundle 'm2mdas/phpcomplete-extended-laravel'

" miscellaneous
Plug 'dracula/vim'
Plug 'amiorin/vim-project'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

" never used
" Plugin 'lervag/vimtex'
" Plugin 'johnsyweb/vim-makeshift'

call plug#end()

" --------------------
"NERDTree configuration"
"let NERDTreeIgnore=['\.aux$', '\.bbl$', '\.blg$', '\.brf$', '\.fls$', '\.idx', '\.pyc']
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd VimEnter * if argc() == 1 | NERDTree | wincmd p | endif

"NERDTreeTabs configuration"
"map ff :NERDTreeTabsToggle<CR>
"let NERDTreeShowHidden=1
"
"PHPcomplete-extended
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:phpcomplete_index_composer_command='composer --no-ansi'

"Makeshift configuration"
"let g:makeshift_chdir = 1

" CoC configuration
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-css',
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-phpls',
  \ 'coc-python',
  \ ]

"Neocomplete configuration"
let g:vimtex_compiler_latexmk = {'callback' : 0}

"Markdown preview configuration"
let vim_markdown_preview_github=0
let vim_markdown_preview_browser='Firefox'

"Terraform plugin
let g:terraform_align=1
let g:terraform_fmt_on_save=1

"ESlint configuration
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript':['eslint'],
\}
let g:ale_fix_on_save = 1
