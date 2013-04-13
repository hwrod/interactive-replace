fun! interactivereplace#InteractiveReplace()
  call s:GlobalInteractiveReplace()
endfun

fun! s:GlobalInteractiveReplace()
    if empty(@/)
        let term = s:AskForTerm()
    else
        let term = @/
    endif
    execute "match IntSearchHL /" . term . "/"
    let save_view = winsaveview()
    let n = 0
    while n < line("$")
        let line = getline(n)
        let col = match(line,term,0)
        try
            while col != -1
                exe "normal! " . string(n) . "G" . string(col) . "lzz"
                redraw
                call inputsave()
                let replacement = input('Replace text with: ')
                call inputrestore()
                if !empty(replacement)
                    let line = substitute(line,term,replacement,"")
                    call setline(n,line)
                endif
                let col = match(line,term,col+1)
            endwhile
        catch /^Vim:Interrupt$/
            " catch <C-c>
            break
        endtry
        let n = n + 1
    endwhile
    call winrestview(save_view)
    execute "match none /" . term . "/"
endfun

fun! s:AskForTerm()
    call inputsave()
    let sterm = input('Enter search term: ')
    call inputrestore()
    return sterm
endfun
