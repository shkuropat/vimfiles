" ~/.vim/filetype.vim
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  " local filetype changes go here
   au! BufRead,BufNewFile *.haml         setfiletype haml

augroup END

augroup markdown

 au! BufRead,BufNewFile *.mkd   setfiletype mkd

augroup END
