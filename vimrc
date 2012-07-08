"-----------------------------------------------------------------------------
" System
"-----------------------------------------------------------------------------

" Включаем несовместимость настроек с Vi
set nocompatible


" Backup copy
"set backup
set nobackup
set noswapfile


" Patogen
filetype off
call pathogen#infect()
filetype plugin indent on


" Показывать положение курсора всё время.
set ruler  


" Показывать незавершённые команды в статусбаре
set showcmd  


" show line numbers
set number


" folding
set foldmethod=indent
set foldnestmax=3
set nofoldenable


" search settings
" ignore case in search patterns and highlight all matches
set hlsearch " 
set ignorecase 


" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=3


" wrap
set wrap
set linebreak


" Выключаем надоедливый "звонок"
set noerrorbells
set novisualbell
set t_vb=   


" Поддержка мыши
set mouse=a
set mousemodel=popup


" Encoding
if has("multi_byte_encoding")
    " используемая в vim (обычно соответствует locale)
    set encoding=utf-8

    " кодировка терминала (обычно соответствует locale)
    set termencoding=utf-8

    " используемая кодировка для файла
    " vim может пытаться автоматически определять (слева направо)
    set fileencodings=utf-8,koi8-r,cp1251,cp866
endif " has("multi_byte_encoding")


" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden


" Скрывать указатель мыши, когда печатаем
set mousehide


" Влючить подстветку синтаксиса
syntax on


" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]


" indent settings
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent


" tab to backspace 
set expandtab 


" status line
set laststatus=2
" file info + encoding
set statusline=%<%F\%m%r[%{&encoding}]
" cursor position
set statusline+=\ %l-%L,%c
" value of byte under cursor.
set statusline+=\ \ %b 

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*


" Fix <Enter> for comment
set fo+=cr


" session
set sessionoptions=curdir,buffers,tabpages


" Disabling vim's startup message
set shortmess+=I


" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t

set completeopt=longest,menuone,menu,preview


" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wcm=<Tab> 
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>

"-----------------------------------------------------------------------------
" Gui
"-----------------------------------------------------------------------------

if has("gui_running")
	" использовать контекстное меню
	set mousemodel=popup

	" разрешить фокусу прыгать за мышью между окнами
	"set mousefocus

	" не скрывать указатель при печати
	set nomousehide

	" начинать обзор с каталога текущего буфера
	set browsedir=buffer

    set guifont=Monospace\ 12
endif

"-----------------------------------------------------------------------------
" Omni completion
"-----------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete
let g:omni_sql_no_default_maps = 1


"-----------------------------------------------------------------------------
" Plugins
"-----------------------------------------------------------------------------
source ~/.vim/bundle.vim


"-----------------------------------------------------------------------------
" Shortcuts
"-----------------------------------------------------------------------------

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Serch and replace word
nmap ; :%s/<c-r>=expand("<cword>")<cr>/

" Save
" F2 ,s
nnoremap ,s :w<CR>
vnoremap ,s <ESC>:w<CR>

nnoremap <F2> :w<CR>
inoremap <F2> <C-O>:w<CR>
vnoremap <F2> <ESC>:w<CR>

" Save all
nnoremap <C-F2> :wall<CR>
inoremap <C-F2> <C-O>:wall<CR>
vnoremap <C-F2> <ESC>:wall<CR>

" F5 - "make" команда
map <F5> :make<cr>
vmap <F5> <esc>:make<cr>i
imap <F5> <esc>:make<cr>i

" F10 - Open/close NERDTree
" see bundle.vim

" F11 - показать окно TagBar
" see bundle.vim

" F12 - обозреватель файлов
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" С-q - выход из Vim 
map <C-Q> <Esc>:qa<cr>

" switch between 'Relative' and 'Absolute' line number is easy with command 
nnoremap <C-L> :call g:ToggleNuMode()<cr>

" extend popmenu shotcuts
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Use sudo for save file
"command! Wsudo set buftype=nowrite | silent execute ':%w !sudo tee %' | set buftype= | e! %

"-----------------------------------------------------------------------------
" Color
"-----------------------------------------------------------------------------

" использовать больше цветов в терминале
set t_Co=256

colorscheme wombat




"-----------------------------------------------------------------------------
" Functions
"-----------------------------------------------------------------------------


" switch between 'Relative' and 'Absolute' line number is easy with command 
function! g:ToggleNuMode()
    if v:version >= 703
        if(&rnu == 1)
            set nu
        else
            set rnu
        endif
    endif
endfunc
