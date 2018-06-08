" quickrun
let g:quickrun_config={
	\"_" : {
		\"runner" : "vimproc",
		\"runner/vimproc/updatetime" : 60
	\},
	\"cpp" : {
		\"cmdopt" : "-I /usr/include/i386-linux-gnu/c++/4.7"
	\},
	\"matx" : {
		\"command" : "matx",
		\"exec" : "%c",
		\'tempfile': '%{tempname()}.mm',
		\'runner': 'process_manager',
		\'runner/process_manager/load': "load \"%S:p\"",
		\'runner/process_manager/prompt': '>> ',
	\},
	\"matx-main" : {
		\"command" : "matx",
		\"exec" : "%c %S:p:t %o",
		\'tempfile': '%{tempname()}.mm',
		\"cmdopt" : "-e 'main()'",
		\'hook/cd/directory': '%S:p:h'
	\},
	\"qml/qmlscene" : {
	\	'command' : 'qmlscene',
	\	'exec'    : '%c %s:p',
	\	'runner'  : 'vimproc',
	\},
\}
let g:quickrun_config['qml'] = g:quickrun_config['qml/qmlscene']

