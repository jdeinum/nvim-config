vim.cmd[[
au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufRead *.plot set filetype=gnuplot
autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.lds set filetype=ld
autocmd BufRead *.tex set filetype=tex
autocmd BufRead *.txt set filetype=text
autocmd Filetype tex setlocal spell
au BufRead,BufNewFile * setlocal textwidth=80
autocmd BufRead *.orig set readonly
autocmd BufRead *.pacnew set readonly
autocmd InsertLeave * set nopaste
]]
