"=============================================================================
" File:     haroopad.vim
" Author:   Seo Townsend
" URL:      https://github.com/sotownsend/vim-haroopad
" Version:  0.0.1

if &cp || (exists("g:haroopad_loaded") && g:haroopad_loaded)
  finish
endif
let g:haroopad_loaded = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists("g:haroopad_dir")
  let g:haroopad_dir = "Haroopad.app"
endif

function s:OpenHaroo()
  silent exe "!open -a " . g:haroopad_dir . " '%:p'"
  redraw!
endfunction

command! Haroo :call s:OpenHaroo()

let &cpo = s:save_cpo
unlet s:save_cpo

"vim:set et
