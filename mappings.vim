" some mappings in vimscript that I can't figure out in lua yet

" fix whitespace
nnoremap <silent> <localleader>w m`:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:noh<cr>``

