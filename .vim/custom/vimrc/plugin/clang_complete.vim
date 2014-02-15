" clang_complete
let g:clang_auto_select=0
let g:clang_complete_auto=0
let g:clang_complete_copen=0
let g:clang_hl_errors=1
let g:clang_snippets=1
let g:clang_snippets_engine='clang_complete'
let g:clang_conceal_snippets=1
let g:clang_trailing_placeholder=1
let g:clang_close_preview=0
let g:clang_user_options='-std=c++11 ' .
			\'-I/usr/include '.
			\'-I/usr/include/i386-linux-gnu '.
			\'-I/usr/include/i386-linux-gnu/c++/4.7 '.
			\'-I/usr/include/i386-linux-gnu/c++/4.7/x32 '.
			\'-I/usr/lib/gcc/i686-linux-gnu/4.7.3/include ' .
			\'-I/usr/include/c++/4.7.3 '.
			\'-I/usr/include/qt5 '.
			\'-I/usr/include/qt5/QtCore '.
			\'-I/usr/include/qt5/QtOpenGL '.
			\'-I/usr/include/qt5/QtGui '.
			\'-I/usr/include/qt5/QtWidgets '.
			\' -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I/usr/share/qt5/mkspecs/linux-g++ '.
			\'-include malloc.h '
let g:clang_library_path='/usr/local/lib'
let g:clang_complete_macros=1
let g:clang_complete_patterns=1

