" {{{2 Start ALE settings
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier', 'eslint']
let g:ale_fixers['javascript.jsx'] = ['prettier', 'eslint']
let g:ale_linters = {}
let g:ale_linters['javascript'] = ['flow', 'eslint']
let g:ale_linters['javascript.jsx'] = ['flow', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_sign_error = '' 
let g:ale_sign_warning = ''
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" !!! End ALE settings}}}2

" {{{2 Start vim-airline settings
let g:airline_theme='deus'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" !!! End vim-airline settings}}}2

" vim-flow setings


" Vim-rooter settings
let g:rooter_silent_chdir = 1
let g:rooter_use_lcd = 1

" vim-jsx settings
let g:jsx_ext_required = 0

" End Zac's changes}}}1
