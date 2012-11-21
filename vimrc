"------------------------------------------------------------------------------
"### GLOBAL SETTINGS ###
"------------------------------------------------------------------------------

set nocompatible                "No compatibility needed with old vi

"-------------------------------
"PATHOGEN PLUGIN CALL
"-------------------------------
call pathogen#infect()

"-------------------------------
"TAB BEHAVIOUR
"-------------------------------
set expandtab                   "Set tab to whitespaces
set smartindent                 "Sets smart indents for different languages
"set tabstop=4                   "Set tab to 4 space characters long 
set shiftwidth=4                "Set width to be used for indents
"set smarttab                    "Smartly backspaces tab equivalent spaces
set softtabstop=4               "Feels as if tabs are used with <BS>
filetype plugin indent on       "Indents and plugin loading depend on filetype

"-------------------------------
"APPEARANCE
"-------------------------------
set number                      "Enables line numbers
syntax on                       "Enables syntax highlighting according to ft
"set colorcolumn=80             "Shows a vertical line after column 80
set hls	                        "Sets highlighting for text searches etc

"-------------------------------
"TEXT NAVIGATION
"-------------------------------
set bs=2                        "Sets backspace behaviour
imap <C-BS> <C-W>
                                "Backspace can delete word with Ctrl+bs
set foldmethod=indent           "Fold on indents for normal programming
set mouse=a                     "Sets mouse for use in terminals
function! ResCur()              "Jumps to last marked position in file 
  if line("'\"") <= line("$")   "Tip from:
    normal! g`"                 
    return 1                    " http://vim.wikia.com/wiki/
  endif                           " Restore_cursor_to_file_position_in_previous_editing_session
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

"-------------------------------
"CONTENT CHECKING
"-------------------------------
setlocal spell spelllang=en_gb  "Set spell checker and default language
au! BufRead,BufNewFile *.f90 
    \let b:fortran_do_enddo=1
let g:tex_flavor='latex'

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"------------------------------------------------------------------------------
"### PLATFORM SPECIFIC SETTINGS ###
"------------------------------------------------------------------------------

"-------------------------------
"Determine whether on Linux
"-------------------------------
if strpart(system("uname"),0,5) == "Linux"
    let platform="linux"        "Sets variable to remember platform
    set grepprg=grep\ -nH\ $*   "Sets the grep program

    "*** Color schemes in terminal vim ***
    "First let csapprox know if we are working with konsole
    if (&term == 'xterm' || &term =~? '^screen') && (hostname() == 'debussy' || hostname() == 'ravel')
    " On my machine, I use Konsole with 256 color support
        set t_Co=256
        let g:CSApprox_konsole = 1
        colorscheme BlackForrest
    endif
    let g:Tex_MultipleCompileFormats="pdf,dvi"
    let g:Tex_DefaultTargetFormat = "pdf"
    let g:Tex_ViewRule_pdf = "okular"
    let g:Tex_ViewRule_dvi = "okular"
    let g:Tex_ViewRule_ps = "okular"


"-------------------------------
"Determine whether on Mac OS X
"-------------------------------
elseif strpart(system("uname"),0,6) == "Darwin"
    let platform="darwin"
    set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_TreatMacViewerAsUNIX = 1
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Pwww -o $*.ps $*.dvi'
let g:Tex_CompileRule_pspdf = 'ps2pdf $*.ps'
let g:Tex_CompileRule_dvipdf = 'dvipdfm $*.dvi'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=batchmode $*'
  
" let g:Tex_ViewRule_dvi = 'texniscope'
let g:Tex_ViewRule_ps = 'Preview'
let g:Tex_ViewRule_pdf = 'open -a Preview'
"  
" let g:Tex_FormatDependency_ps  = 'dvi,ps'
" let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
" let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'
"  
" " let g:Tex_IgnoredWarnings ='
" "       \"Underfull\n".
" "       \"Overfull\n".
" "       \"specifier changed to\n".
" "       \"You have requested\n".
" "       \"Missing number, treated as zero.\n".
" "       \"There were undefined references\n".
" "       \"Citation %.%# undefined\n".
" "       \"\oval, \circle, or \line size unavailable\n"' 

"-------------------------------
"Determine whether on Windows/?
"-------------------------------
else
    let platform="windows"
    let g:Tex_MultipleCompileFormats="pdf,dvi"
    let g:Tex_DefaultTargetFormat = "pdf"
    let g:Tex_ViewRule_pdf = "C:\\Program\ Files\ \(x86\)\\Adobe\\Acrobat\ 9\.0\\Acrobat\\Acrobat.exe"
endif

