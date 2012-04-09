set foldmethod=syntax
set textwidth=100

if (platform == "windows")
    let g:Tex_MultipleCompileFormats="pdf,dvi"
    let g:Tex_DefaultTargetFormat = "pdf"
    let g:Tex_ViewRule_pdf = "C:\\Program\ Files\ \(x86\)\\Adobe\\Acrobat\ 9\.0\\Acrobat\\Acrobat.exe"
endif

