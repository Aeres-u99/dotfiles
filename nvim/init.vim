""" Optixal's Neovim Init.vim
""" Vim-Plug
call plug#begin()
" for vim
" call plug#begin('~/.vim/plugged')
" for neovim
call plug#begin('~/.config/nvim/plugged')
" Keep Plug commands between plug#begin/end.
" Plug 'https://github.com/Valloric/YouCompleteMe'
" Aesthetics - Main
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }

" If you have nodejs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'zaki/zazen'
Plug 'gabrielelana/vim-markdown'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'rr-/vim-hexdec'
Plug 'sindrets/diffview.nvim'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Code Navigation
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'gyim/vim-boxdraw'
Plug 'kshenoy/vim-signature'
Plug 'jbyuki/venn.nvim'
" To copy paste images inside vim
Plug 'ekickx/clipboard-image.nvim'
Plug 'ellisonleao/glow.nvim', {'branch': 'main'}
" Vim Wiki for Notes needs
Plug 'vimwiki/vimwiki'
" Aethetics - Additional
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'
Plug 'rinx/nvim-minimap'
" Functionalities
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'
Plug 'KabbAmine/vCoolor.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'vim-scripts/loremipsum'
Plug 'honza/vim-snippets'
Plug 'metakirby5/codi.vim'
Plug 'dkarter/bullets.vim'
Plug 'Olical/conjure'
" You'll need vim-sexp too for selecting forms.
Plug 'guns/vim-sexp'
Plug 'krisajenkins/vim-pipe'
Plug 'arp242/auto_mkdir2.vim'


" Golang development 
" And while you're here, tpope's bindings make vim-sexp a little nicer to use.
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 
" Entertainment
"Plug 'ryanss/vim-hackernews'

call plug#end()

""" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')
""" Coloring
syntax on
color habamax
"color dracula
"color spring-night
"color zazen
"color hydrangea
" color Tomorrow-Night-Bright
" Ale configs
"
" Set this. Airline will handle the rest.
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
set foldlevelstart=20
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '▶▶'
let g:ale_sign_warning = '⬢'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
""" Plugin Configurations

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Deoplete
" let g:deoplete#enable_at_startup = 1
" Disable documentation window
set completeopt-=preview

" vim-pydocstring
let g:pydocstring_doq_path = '~/.config/nvim/env/bin/doq'

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

""" Custom Mappings

let mapleader=","
let localleader="\\"
nmap <leader>q :NERDTreeToggle<CR>
" nmap \ <leader>q
nmap <leader>g :GenCtags<CR>
nmap <leader>w :TagbarToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme 
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e4 :call ColorSeoul256()<CR>
nmap <leader>e5 :call ColorZazen()<CR>
nmap <leader>e6 :call ColorSeoul256()<CR>
nmap <leader>e7 :call ColorSeoul256()<CR>
nmap <leader>e8 :call ColorSeoul256()<CR>
nmap <leader>e9 :call ColorSeoul256()<CR>
nmap <leader>,r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>s <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
nmap <leader>d <Plug>(pydocstring)
nmap <leader>f :Files<CR>
nmap <leader>y :Goyo<CR>
nmap <leader>z :PasteImg<CR>
noremap <leader>g :Glow<CR>
vmap f :VBox<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>v :set conceallevel=0<CR>
nmap <leader>b :set virtualedit=all<CR>
nmap <leader>l :Limelight!!<CR>
nmap <C-p> <Plug>MarkdownPreviewToggle
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
"nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
nmap <Leader>1 :call EisenhowerOpenSingle('1')<CR>
nmap <Leader>2 :call EisenhowerOpenSingle('2')<CR>
nmap <Leader>3 :call EisenhowerOpenSingle('3')<CR>
nmap <Leader>4 :call EisenhowerOpenSingle('4')<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>+ :exe "resize +15"<CR>
nnoremap <Leader>- :exe "resize -15"<CR>
nnoremap <Leader>> :exe "vertical resize +15"<CR>
nnoremap <Leader>< :exe "vertical resize -15"<CR>
" Code Navigation
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let g:rainbow_conf = {
\	'guifgs': ['lightpink', 'lightyellow', 'seagreen3', 'firebrick', 'Darkblue', 'darkcyan'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta', 'gray'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained',
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3', 'darkcyan', 'darkgreen'],
\		},
\		'haskell': {
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody',
\		},
\		'perl': {
\			'syn_name_prefix': 'perlBlockFoldRainbow', 
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], 
\		},
\		'css': 0,
\	}
\}
" Code Navigation
"
let g:vimpipe_invoke_map='<LocalLeader>o'
"Turn on backup option
set backup 
"Where to store backups
set backupdir=~/.vim/backup//
set cursorline
"Make backup before overwriting the current buffer
set writebackup
set fillchars+=vert:\▏
"Overwrite the original backup file
set backupcopy=yes
"set cursorline        " highlight current line
"Meaningful backup name, filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

let g:airline_theme='transparent'
" disable header folding
let g:vim_markdown_folding_disabled = 1
" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" Golang code
autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
" Highlight lines
" Make theme always transparent
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

" Give ctrl+c a job when it is otherwise being wasted!
" Now it toggles `hlsearch` while in NORMAL mode:
nnoremap <silent> <c-c> :if (&hlsearch == 1) \| set nohlsearch \| else \| set hlsearch \| endif<cr>
" highlight the visual selection after pressing enter.
xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>


" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format
" set conceallevel=0
let g:vimwiki_list = [{'path': '~/vimwiki/','syntax': 'markdown', 'ext': '.md'}]
" Preview markdown
let g:scheme_split_size = -5

command Mdpew !pandoc --from=gfm %:t -s --highlight-style kate --output=/tmp/temp.html && min /tmp/temp.html && rm /tmp/temp.html
