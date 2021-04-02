set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'glench/vim-jinja2-syntax'
Plugin 'Yggdroot/indentLine'

" semanser/dotfiles
Plugin 'stephpy/vim-yaml'
Plugin 'haya14busa/incsearch.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'Lilja/vim-chezmoi'

Plugin 'pedrohdz/vim-yaml-folds'
Plugin 'dense-analysis/ale'
Plugin 'pearofducks/ansible-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'hashivim/vim-terraform'
Plugin 'jaredgorski/spacecamp'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set foldlevelstart=20

" https://vi.stackexchange.com/posts/12521/revisions
autocmd FileType markdown let g:indentLine_enabled=0

let g:ansible_unindent_after_newline = 1
let g:ansible_yamlKeyName = 'yamlKey'
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1


let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

let g:terraform_align=1
let g:terraform_fmt_on_save=1

" colorscheme spacecamp
"

" Spell-check Markdown files and Git Commit Messages
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" Enable dictionary auto-completion in Markdown files and Git Commit Messages
autocmd FileType markdown setlocal complete+=kspell
autocmd FileType gitcommit setlocal complete+=kspell

" semanser dotfiles
"
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.6 } }
let g:fzf_colors = { 'fg+':     ['fg', 'Exception', 'CursorColumn', 'Normal'] }

if has('nvim')
  augroup term
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
  augroup END
endif

augroup folding
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim execute "normal! zM"
augroup END

au BufRead,BufNewFile .eslintrc set filetype=json

autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

" Disable Searchant highlight when incsearch.vim highlights also disable
autocmd CursorMoved * call SearchantStop()
function! SearchantStop()
  :execute "normal \<Plug>SearchantStop"
endfunction
" }}}

set clipboard+=unnamedplus


" FUNCTIONS {{{
" correct label for folding block in vimrc
set foldtext=MyFoldText()
function! MyFoldText()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  return v:folddashes . sub
endfunction

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! s:find_selection()
  let selection = s:get_visual_selection()
  execute 'Ag '.s:get_visual_selection()
endfunction

function! s:get_visual_selection()
  " why is this not a built-in vim script function?!
  let [line_start, column_start] = getpos("'<")[1:2]
  let [line_end, column_end] = getpos("'>")[1:2]
  let lines = getline(line_start, line_end)
  if len(lines) == 0
    return ''
  endif
  let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][column_start - 1:]
  return join(lines, "\n")
endfunction
" }}}

" HIGHLIGHT {{{
hi illuminatedWord guibg=#4c525e
hi Normal guibg=NONE ctermbg=NONE
hi Visual guifg=#000000 guibg=#FFFFFF gui=none
hi Search guibg=Blue guifg=White
hi MatchParen guibg=#db8446
" }}}
