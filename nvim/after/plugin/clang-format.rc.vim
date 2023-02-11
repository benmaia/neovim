"let g:clang_format#style_options = {
			"\"Language" : "Cpp",
			"\"BasedOnStyle" : "Google",
            "\ "AccessModifierOffset" : -2,
			"\"AllowAllParametersOfDeclarationOnNextLine" : "false",
            "\ "AllowShortFunctionsOnASingleLine" : "Inline",
            "\ "AllowShortIfStatementsOnASingleLine" : "false",
            "\ "AllowShortLoopsOnASingleLine" : "false",
			"\"BinPackArguments" : "false",
			"\"BinPackParameters" : "false",
			"\ "BraceWrapping" : "AfterClass" : "true",
            "\ "BreakBeforeBraces" : "Custom",
"}
"
let g:clang_format#detect_style_file = 1
let g:clang_format#detect_style_file = 1

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
