"PATHOGEN PLUGIN CALL
call pathogen#infect()

"TAB BEHAVIOUR
set smartindent             "Sets smart indents for different languages
set tabstop=4               "Set tab to 4 space characters long 
set expandtab               "Set tab to whitespaces
set shiftwidth=4            "Set width to be used for indents
"set softtabstop=4          "Vim treats whitespace tab inserts as tabs
set smarttab                "Smartly backspaces tab equivalent spaces
filetype plugin indent on   "Indents and plugin loading depend on filetype

"APPEARANCE
set number                  "Enables line numbers
syntax on                   "Enables syntax highlighting according to filetype

"TEXT NAVIGATION
set bs=2                    "Backspace can delete word with Ctrl+bs

"CONTENT CHECKING
setlocal spell spelllang=en_gb
