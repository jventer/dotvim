" Colorscheme created with ColorSchemeEditor v1.2.2
"Name: Turquoise
"Maintainer: Jannes Venter <jannes.venter@gmail.com>
"Version: 0.1
"Last Change: 2009 Sep 23
set background=dark
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "Turquoise"

if v:version >= 700
	highlight CursorColumn guibg=Grey40 gui=NONE
	highlight CursorLine guibg=Grey40 gui=NONE
	highlight Pmenu guibg=Magenta gui=NONE
	highlight PmenuSel guibg=DarkGrey gui=NONE
	highlight PmenuSbar guibg=Grey gui=NONE
	highlight PmenuThumb gui=reverse
	highlight TabLine guibg=DarkGrey gui=underline
	highlight TabLineFill gui=reverse
	highlight TabLineSel gui=bold
	if has('spell')
		highlight SpellBad gui=undercurl
		highlight SpellCap gui=undercurl
		highlight SpellLocal gui=undercurl
		highlight SpellRare gui=undercurl
	endif
endif
highlight Cursor guifg=slategrey guibg=khaki gui=NONE
highlight CursorIM gui=NONE
highlight DiffAdd guibg=DarkBlue gui=NONE
highlight DiffChange guibg=DarkMagenta gui=NONE
highlight DiffDelete guifg=Blue guibg=DarkCyan gui=bold
highlight DiffText guibg=Red gui=bold
highlight Directory guifg=Cyan gui=NONE
highlight ErrorMsg guifg=White guibg=Red gui=NONE
highlight FoldColumn guifg=tan guibg=#727480 gui=NONE
highlight Folded guifg=#B39700 guibg=#3C6666 gui=NONE
highlight IncSearch guifg=slategrey guibg=khaki gui=reverse
highlight LineNr guifg=Yellow gui=NONE
highlight MatchParen guifg=#414141 guibg=#EBB896 gui=NONE
highlight ModeMsg guifg=goldenrod gui=bold
highlight MoreMsg guifg=SeaGreen gui=bold
highlight NonText guifg=#8DDDF7 guibg=#384D4F gui=bold
highlight Normal guifg=#FFFD1D guibg=#254040 gui=NONE
highlight Question guifg=springgreen gui=bold
highlight Search guifg=wheat guibg=peru gui=NONE
highlight SignColumn guifg=Cyan guibg=Grey gui=NONE
highlight SpecialKey guifg=yellowgreen gui=NONE
highlight StatusLine guifg=black guibg=#c2bfa5 gui=NONE
highlight StatusLineNC guifg=grey50 guibg=#c2bfa5 gui=NONE
highlight Title guifg=indianred gui=bold
highlight VertSplit guifg=grey50 guibg=#c2bfa5 gui=NONE
highlight Visual guifg=#FFFFFF guibg=#4B5C8A gui=NONE
highlight VisualNOS gui=bold,underline
highlight WarningMsg guifg=salmon gui=NONE
highlight WildMenu guifg=Black guibg=Yellow gui=NONE
highlight link Boolean Constant
highlight link Character Constant
highlight Comment guifg=#C9C9C9 gui=NONE
highlight link Conditional Statement
highlight Constant guifg=#FABBE8 gui=NONE
highlight link Debug Special
highlight link Define PreProc
highlight link Delimiter Special
highlight Error guifg=White guibg=Red gui=NONE
highlight link Exception Statement
highlight link Float Number
highlight link Function Identifier
highlight Identifier guifg=palegreen gui=NONE
highlight Ignore guifg=grey40 gui=NONE
highlight link Include PreProc
highlight link Keyword Statement
highlight link Label Statement
highlight link Macro PreProc
highlight link Number Constant
highlight link Operator Statement
highlight link PreCondit PreProc
highlight PreProc guifg=#6FB894 gui=NONE
highlight link Repeat Statement
highlight Special guifg=#7F94CC gui=NONE
highlight link SpecialChar Special
highlight link SpecialComment Special
highlight Statement guifg=#F8FE9C gui=bold
highlight link StorageClass Type
highlight link String Constant
highlight link Structure Type
highlight link Tag Special
highlight Todo guifg=orangered guibg=yellow2 gui=NONE
highlight Type guifg=#9EC3F0 gui=bold
highlight link Typedef Type
highlight Underlined guifg=#80a0ff gui=underline


"ColorScheme metadata{{{
if v:version >= 700
	let g:Turquoise_Metadata = {
				\"Palette" : "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90",
				\"Maintainer" : "Jannes Venter",
				\"Name" : "Turquoise",
				\"Last Change" : "2009 Sep 23",
				\"Version" : "0.1",
				\"Email" : "jannes.venter@gmail.com",
				\}
endif
"}}}
" vim:set foldmethod=marker expandtab filetype=vim:
