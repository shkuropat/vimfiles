"-----------------------------------------------------------------------------
" System
"-----------------------------------------------------------------------------

" Backup
"set backup
set nobackup
set noswapfile

" Set filetype stuff to on
filetype plugin on
filetype indent on

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" Включаем несовместимость настроек с Vi
set nocompatible

" Показывать положение курсора всё время.
set ruler  

" Показывать незавершённые команды в статусбаре
set showcmd  

" Включаем нумерацию строк
set nu

" Фолдинг по отсупам
"set foldmethod=indent

" Поиск по набору текста (очень полезная функция)
set incsearch

" подсвечивать поиск
set hls

" игнорировать регистр при поиске
set ic

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=7

"показываем соответствующие скобки
set showmatch

"не разрывать строку
set wrap

"разрываем строку только между словами
set linebreak

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=   

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Скрыть панель в gui версии ибо она не нужна
" set guioptions-=T

" Сделать строку команд высотой в одну строку
set ch=1

" Скрывать указатель мыши, когда печатаем
set mousehide

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Преобразование Таба в пробелы
set expandtab

" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

" Disabling vim's startup message
set shortmess+=I

" Раскладка
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

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

endif



"-----------------------------------------------------------------------------
" Горячие клавишы
"-----------------------------------------------------------------------------

" ToDo map autoformat on CTRL-F

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" Поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F2 - быстрое сохранение
" сохранить
nnoremap <F2> :w<CR>
inoremap <F2> <C-O>:w<CR>
vnoremap <F2> <ESC>:w<CR>

" сохранить всё
nnoremap <C-F2> :wall<CR>
inoremap <C-F2> <C-O>:wall<CR>
vnoremap <C-F2> <ESC>:wall<CR>

" F5 - "make" команда
map <F5> :make<cr>
vmap <F5> <esc>:make<cr>i
imap <F5> <esc>:make<cr>i

" Открыть/закрыть окно файлового обозревателя NERDTree
nmap <C-d> :execute 'NERDTreeToggle ' .getcwd()<CR>
imap <F10> <ESC>:NERDTreeToggle<CR>
nmap <F10> :NERDTreeToggle<CR>

" F11 - показать окно Taglist
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>

" F12 - обозреватель файлов
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap >Ins> <Esc>i

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wcm=<Tab> 
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>

" С-q - выход из Vim 
map <C-Q> <Esc>:qa<cr>



"-----------------------------------------------------------------------------
" Color
"-----------------------------------------------------------------------------

" использовать больше цветов в терминале
set t_Co=256

" фон терминала - темный
" set background=dark

" схема
:colorscheme ir_black



"-----------------------------------------------------------------------------
" Omni completion
"-----------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete

"-----------------------------------------------------------------------------
" SessionMgr
"-----------------------------------------------------------------------------
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"

"-----------------------------------------------------------------------------
" FuzzyFinder
"-----------------------------------------------------------------------------
"map <leader>f :FufFile<CR>
"map <leader>b :FufBuf<CR>
nmap ,fb :FuzzyFinderBuffer<CR>
nmap ,ff :FuzzyFinderFile<CR>
nmap ,ft :FuzzyFinderTag<CR>

"-----------------------------------------------------------------------------
" NERDTree
"-----------------------------------------------------------------------------
let g:NERDTreeWinPos = "right"

"-----------------------------------------------------------------------------
" SnipMate
"-----------------------------------------------------------------------------
source ~/.vim/snippets/support_functions.vim
