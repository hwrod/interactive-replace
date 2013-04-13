" ============================================================================
" File:        interactivereplace.vim
" Description: Interactively choose replacement text while you search/replace
" Maintainer:  Harold Rodriguez <harold@planetharold.com>
" License:     MIT
"
" ============================================================================

if exists("g:loaded_InteractiveReplace") || &cp
    finish " exit if already loaded or in compatibility mode
endif

let g:loaded_InteractiveReplace = 1.0.0 " semver

if !exists('g:InteractiveReplace_map')
    let g:InteractiveReplace_map = '<leader>r'
endif

if !hlexists('IntSearchHL')
    hi IntSearchHL ctermbg=blue guibg=blue
endif

exe "nnoremap"  g:InteractiveReplace_map  ":InteractiveReplace<CR>"
command! InteractiveReplace call interactivereplace#InteractiveReplace()
