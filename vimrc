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
if has("autocmd")               "Tests if vim system can do autocommands 
    au BufReadPost *            "Jumps to last marked position in file 
        \if line("'\"") > 0 
        \&& line("'\"") <= line("$")
        \| exe "normal g'\"" | 
    \endif
endif                           


"-------------------------------
"CONTENT CHECKING
"-------------------------------
setlocal spell spelllang=en_gb  "Set spell checker and default language
au! BufRead,BufNewFile *.f90 
    \let b:fortran_do_enddo=1
let g:tex_flavor='latex'

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
    if (&term == 'xterm' || &term =~? '^screen') && (hostname() == 'debussy' || hostname() == 'FastVenter')
    " On my machine, I use Konsole with 256 color support
        set t_Co=256
        let g:CSApprox_konsole = 1
        colorscheme BlackForrest
     endif



"-------------------------------
"Determine whether on Mac OS X
"-------------------------------
elseif strpart(system("uname"),0,6) == "Darwin"
    let platform="darwin"
    set grepprg=grep\ -nH\ $*

"-------------------------------
"Determine whether on Windows/?
"-------------------------------
else
    let platform="windows"
endif

