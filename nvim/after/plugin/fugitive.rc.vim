" Status line
if !exists('*fugitive#statusline')
  set statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
  set statusline+=%=
  set statusline+=%{fugitive#statusline()}
endif

"cnoreabbrev g Git
"cnoreabbrev gopen GBrowse

let g:github_enterprise_urls = ['https://cc-github.bmwgroup.net']

