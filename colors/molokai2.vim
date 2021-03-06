" Colorscheme created with ColorSchemeEditor v1.2.3
"Name: molokai
"Maintainer: 
"Last Change: 2012 Nov 20
set background=dark
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "molokai"

if v:version >= 700
	highlight CursorColumn guibg=#293739 gui=NONE
	highlight CursorLine guibg=#293739 gui=NONE
	highlight Pmenu guifg=#66D9EF guibg=#000000 gui=NONE
	highlight PmenuSel guibg=#808080 gui=NONE
	highlight PmenuSbar guibg=#080808 gui=NONE
	highlight PmenuThumb guifg=#66D9EF guibg=White gui=NONE
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
highlight Cursor guifg=#000000 guibg=#F8F8F0 gui=NONE
highlight link CursorIM cleared
highlight DiffAdd guibg=#13354A gui=NONE
highlight DiffChange guifg=#89807D guibg=#4C4745 gui=NONE
highlight DiffDelete guifg=#960050 guibg=#1E0010 gui=bold
highlight DiffText guibg=#4C4745 gui=bold,italic
highlight Directory guifg=#A6E22E gui=NONE
highlight ErrorMsg guifg=#F92672 guibg=#232526 gui=bold
highlight FoldColumn guifg=#465457 guibg=#000000 gui=NONE
highlight Folded guifg=#465457 guibg=#000000 gui=NONE
highlight IncSearch guifg=#C4BE89 guibg=#000000 gui=reverse
highlight LineNr guifg=#465457 guibg=#232526 gui=NONE
highlight MatchParen guifg=#000000 guibg=#FD971F gui=bold
highlight ModeMsg guifg=#E6DB74 gui=bold
highlight MoreMsg guifg=#E6DB74 gui=bold
highlight NonText guifg=#465457 gui=bold
highlight Normal guifg=#FFFFFF guibg=#272822 gui=NONE
highlight Question guifg=#66D9EF gui=bold
highlight Search guifg=#FFFFFF guibg=#455354 gui=NONE
highlight SignColumn guifg=#A6E22E guibg=#232526 gui=NONE
highlight SpecialKey guifg=#465457 gui=italic
highlight StatusLine guifg=#455354 guibg=fg gui=bold,reverse
highlight StatusLineNC guifg=#808080 guibg=#080808 gui=reverse
highlight Title guifg=#ef5939 gui=bold
highlight VertSplit guifg=#808080 guibg=#080808 gui=bold
highlight Visual guibg=#403D3D gui=NONE
highlight VisualNOS guibg=#403D3D gui=bold,underline
highlight WarningMsg guifg=#FFFFFF guibg=#333333 gui=bold
highlight WildMenu guifg=#66D9EF guibg=#000000 gui=NONE
highlight Boolean guifg=#AE81FF gui=NONE
highlight Character guifg=#E6DB74 gui=NONE
highlight Comment guifg=#737A7B gui=NONE
highlight Conditional guifg=#F92672 gui=bold
highlight Constant guifg=#AE81FF gui=bold
highlight Debug guifg=#BCA3A3 gui=bold
highlight Define guifg=#66D9EF gui=NONE
highlight Delimiter guifg=#FFFF8E gui=NONE
highlight Error guifg=#960050 guibg=#1E0010 gui=NONE
highlight Exception guifg=#A6E22E gui=bold
highlight Float guifg=#AE81FF gui=NONE
highlight Function guifg=#A6E22E gui=NONE
highlight Identifier guifg=#FFA500 gui=NONE
highlight Ignore guifg=#808080 guibg=bg gui=NONE
highlight link Include PreProc
highlight Keyword guifg=#F92672 gui=bold
highlight Label guifg=#E6DB74 gui=NONE
highlight Macro guifg=#C4BE89 gui=italic
highlight Number guifg=#AE81FF gui=NONE
highlight Operator guifg=#F92672 gui=NONE
highlight PreCondit guifg=#3DDCFF gui=NONE
highlight PreProc guifg=#A6E22E gui=NONE
highlight Repeat guifg=#F92672 gui=bold
highlight Special guifg=#FFA500 gui=NONE
highlight SpecialChar guifg=#F92672 gui=bold
highlight SpecialComment guifg=#465457 gui=bold
highlight Statement guifg=#F63279 gui=NONE
highlight StorageClass guifg=#FFA500 gui=italic
highlight String guifg=#E6DB74 gui=NONE
highlight Structure guifg=#66D9EF gui=NONE
highlight Tag guifg=#F92672 gui=italic
highlight Todo guifg=#FFFFFF guibg=bg gui=bold
highlight Type guifg=#66D9EF gui=NONE
highlight Typedef guifg=#66D9EF gui=NONE
highlight Underlined guifg=#808080 gui=underline


"ColorScheme metadata{{{
if v:version >= 700
	let g:molokai_Metadata = {
				\"Palette" : "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90",
				\"Last Change" : "2012 Nov 20",
				\"Name" : "molokai",
				\}
endif
"}}}
" vim:set foldmethod=marker expandtab filetype=vim:
