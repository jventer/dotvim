"------------------------------------------------------------------------------
"### PLATFORM SPECIFIC SETTINGS ###
"------------------------------------------------------------------------------

"-------------------------------
"Determine whether on Linux
"-------------------------------
if strpart(system("uname"),0,5) == "Linux"
    let platform="linux"            "Sets variable to remember platform
"    set gfn=peep                    "peep font, nice clean, no smooting
    if (hostname() == 'ravel')
"        set gfn=peep\ 12
        set gfn=Consolas\ 12
    elseif (hostname() == 'debussy')
        set gfn=Inconsolata\ Medium\ 13
    else
        set gfn=DejaVu\ Sans\ Mono\ 9
    endif
    set guioptions-=T               "Removes toolbar
    set guioptions-=m               "Removes menu

"-------------------------------
"Determine whether on Mac OS X
"-------------------------------
elseif strpart(system("uname"),0,6) == "Darwin"
    let platform="darwin"
    set gfn=Inconsolata:h17
    set transparency=5
else
    let platform="windows"
    set gfn=peep:h11:cOEM
endif

"------------------------------------------------------------------------------
"### PLATFORM INDEPENDENT SETTINGS ###
"------------------------------------------------------------------------------
colorscheme BlackForrest        "Sets colour scheme
winpos 0 0                      "Places window position at 0,0
set columns=130                 "This is a reasonable width
set lines=50	                "This should be a reasonable height
