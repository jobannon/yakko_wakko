set nocp

syntax on

colorscheme gruvbox

set clipboard=unnamed 
set cursorline
set nowrap                            " don't wrap lines
set tabstop=2 shiftwidth=2            " a tab is two spaces (or set this to 4)
set expandtab                         " use spaces, not tabs (optional)
set backspace=indent,eol,start        " backspace through everything in insert mode
set autoindent
set copyindent
set number
set showmatch
set smarttab
set title
set nobackup
set noswapfile
set nohlsearch
" remaps for the sake of civility
let mapleader = " "
nnoremap ; :

" set nu rnu                            " set abs number on current line, but relative everywhere else

if !&scrolloff
    set scrolloff=10                    " Show next 10 lines while scrolling.
endif

if has('nvim')
  set termguicolors
  set lazyredraw                        " macros do not have to redraw the screen

  nnoremap <leader>tl      :split +terminal<cr>
  nnoremap <leader>tj      :vsplit +terminal<cr>
  tnoremap <esc>          <c-\><c-n>

  " makes widmenu nice
  set wildmenu
  set wildmode=longest:full,full
  set cmdheight=1

  " NNN configuration
  let $NNN_TMPFILE="/tmp/nnn"
  let g:nnn#command = 'nnn -l'
  let g:nnn#replace_netrw=1
  let g:nnn#set_default_mappings = 0
  nnoremap <leader>n :NnnPicker '%:p:h'<CR>
  let g:nnn#layout = { 'left': '~20%' }
  let g:nnn#action = {
      \ '<c-l>': 'vsplit',
      \ '<c-j>': 'split' }

endif

" Searching
set incsearch                         " incremental searching
set ignorecase                        " ignore case in searching

" color of selectable letter background
hi link EasyMotionTarget Function
hi link EasyMotionShade  Comment


" Easymotion stuff
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" easier window motions
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>w<Leader>l :vsp<CR>
nnoremap <Leader>w<Leader>j :sp<CR>
nnoremap <tab>   <c-w>w               " Circular window nav


"fzf stuff
set rtp+=/usr/local/opt/fzf
let g:fzf_buffers_jump = 1
nnoremap <silent> <Leader>p :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>c :Commits<CR>
