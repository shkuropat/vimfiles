" File: bundle.vim
" Author: Eugene Shkuropat
" Description: Plugins settings 
" Last Modified: April 07, 2012

" These plugins need update manualy:
"	bundle/dfrank_util/
"	bundle/grep.vim/
"	bundle/indexer/
"	bundle/vimprj/


"Bundle nerdtree
"-----------------------------------------------------------------------------
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1


"Bundle UltiSnips
"-----------------------------------------------------------------------------
let g:snips_author = "Eugene Shkuropat"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "bundle/ultisnips-snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"Bundle syntastic
"-----------------------------------------------------------------------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2


"Bundle grep.vim
"-----------------------------------------------------------------------------
let Grep_Skip_Dirs = '.svn .git CVS .hg'


"Bundle TagBar
"-----------------------------------------------------------------------------
map <F11> :TagbarToggle<cr>
vmap <F11> <esc>:TagbarToggle<cr>
imap <F11> <esc>:TagbarToggle<cr>


"Bundle NerdTree
"-----------------------------------------------------------------------------
nmap <C-d> :execute 'NERDTreeToggle ' .getcwd()<CR>
imap <F10> <ESC>:NERDTreeToggle<CR>
nmap <F10> :NERDTreeToggle<CR>
