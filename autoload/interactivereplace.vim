fun! interactivereplace#InteractiveReplace()
  call s:GlobalInteractiveReplace()
endfun

fun! s:GlobalInteractiveReplace()
    hi IntSearchHL ctermbg=blue guibg=blue
    exe "silent!0/"
    exe "match IntSearchHL /".@/."/"
    let save_view = winsaveview()
    let n = 0
    while n < line("$")
        if match(getline("."), @/) != -1
            redraw
            call inputsave()
            let replacement = input('Replace next with: ')
            call inputrestore()
            exe "silent!s//" . replacement
            exe "silent!0/"
        else
            let n = n+1
        endif
    endwhile
    call winrestview(save_view)
    hi clear IntSearchHL
endfun
