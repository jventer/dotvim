"------------------------------------------------------------------------------
"### PLATFORM SPECIFIC SETTINGS ###
"------------------------------------------------------------------------------

"-------------------------------
"Determine whether on Linux
"-------------------------------
if strpart(system("uname"),0,5) == "Linux"
    let platform="linux"            "Sets variable to remember platform
    set gfn=peep                    "peep font, nice clean, no smooting
    set guioptions-=T               "Removes toolbar from top
"-------------------------------
"Determine whether on Mac OS X
"-------------------------------
elseif strpart(system("uname"),0,6) == "Darwin"
    let platform="darwin"
    set gfn=Anonymous\ Pro:h14
    set transparency=10
endif

"------------------------------------------------------------------------------
"### PLATFORM INDEPENDENT SETTINGS ###
"------------------------------------------------------------------------------
colorscheme BlackForrest        "Sets colour scheme
winpos 0 0                      "Places window position at 0,0
set columns=130                 "This is a reasonable width
