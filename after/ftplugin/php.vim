" Подстветка SQL внутри PHP строк
let php_sql_query=1

" Подстветка HTML внутри PHP строк
let php_htmlInStrings=1 

" Подстветка базовых функций PHP
let php_baselib = 1

" Используем словарь PHP для автодополнения,
" который можно скачать отсюда http://lerdorf.com/funclist.txt
set dictionary=~/.vim/dic/php

" Формат вывода ошибок PHP
set errorformat=%m\ in\ %f\ on\ line\ %l

" Фолдинг для блоков классов/функций
let php_folding = 0

" Не использовать короткие теги PHP для поиска PHP блоков
let php_noShortTags = 1

setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
set noexpandtab
