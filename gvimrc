colorscheme BlackForrest
set columns=180

"------------------------------------------------------------------------------
"### PLATFORM SPECIFIC SETTINGS ###
"------------------------------------------------------------------------------

"-------------------------------
"Determine whether on Linux
"-------------------------------
if strpart(system("uname"),0,5) == "Linux"
    let platform="linux"        "Sets variable to remember platform
    set gfn=peep
"-------------------------------
"Determine whether on Mac OS X
"-------------------------------
elseif strpart(system("uname"),0,6) == "Darwin"
    let platform="darwin"
    set gfn=Anonymous\ Pro:h14
    set transparency=10
endif

