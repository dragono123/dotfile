function! mappings#transparency#Toggle_transparent()
    if g:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        hi CursorLineNR guibg=NONE ctermbg=NONE
        let g:is_transparent = 1
    else
        hi Normal guibg=#282828
        let g:is_transparent = 0
    endif
endfunction
