let g:context_filetype#filetypes = {
            \ 'vim' : [
            \   {
            \     'start' : '^\s*python <<\s*\(\h\w*\)',
            \     'end' : '^\1',
            \     'filetype' : 'python',
            \   }
            \ ],
            \ 'markdown': [
            \   {
            \     'start' : '^\s*```\s*\(\h\w*\)',
            \     'end' : '^\s*```$',
            \     'filetype' : '\1',
            \   },
            \   {
            \     'start' : '^\s*{%\s*vimhl\s*\(\h\w*\)\s*%}',
            \     'end' : '^\s*{%\s*endvimhl\s*%}$',
            \     'filetype' : '\1',
            \   },
            \ ],
            \}
