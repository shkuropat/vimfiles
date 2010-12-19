" Подстветка SQL внутри PHP строк
let php_sql_query=1

" Подстветка HTML внутри PHP строк
let php_htmlInStrings=1 

" Подстветка базовых функций PHP
let php_baselib = 1

" Настройки, специфичные для определынных файлов мы разнесём по разным местам
au BufRead,BufNewFile *.phps    set filetype=php
au BufRead,BufNewFile *.thtml    set filetype=php

" Используем словарь PHP для автодополнения,
" который можно скачать отсюда http://lerdorf.com/funclist.txt
set dictionary=~/.vim/dic/php

" Проверка синтаксиса PHP
" TODO найти, что нить получше
" set makeprg=php\ -l\ %

" Формат вывода ошибок PHP
set errorformat=%m\ in\ %f\ on\ line\ %l

" phpDoc
" ToDo remap phpDoc
" inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
" nnoremap <C-P> :call PhpDocSingle()<CR> 
" vnoremap <C-P> :call PhpDocRange()<CR>
" тоже для phpDoc, но что делает чет не вкурил, честно с3.14 кусок конфига
let g:pdv_cfg_Uses = 1


" Фолдинг для блоков классов/функций
let php_folding = 0

" Не использовать короткие теги PHP для поиска PHP блоков
let php_noShortTags = 1
