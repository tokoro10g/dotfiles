" TweetVim
au FileType tweetvim call s:tweetvim_keybind()
function! s:tweetvim_keybind()
	nmap <silent> <buffer> <CR> <Plug>(tweetvim_action_enter)
	nmap <silent> <buffer> r  <Plug>(tweetvim_action_reply)
	nmap <silent> <buffer> i  <Plug>(tweetvim_action_in_reply_to)
	nmap <silent> <buffer> u  <Plug>(tweetvim_action_user_timeline)
	nmap <silent> <buffer> o  <Plug>(tweetvim_action_open_links)
	nmap <silent> <buffer> <leader>q  <Plug>(tweetvim_action_search)
	nmap <silent> <buffer> s  <Plug>(tweetvim_action_favorite)
	nmap <silent> <buffer> us <Plug>(tweetvim_action_remove_favorite)
	nmap <silent> <buffer> e  <Plug>(tweetvim_action_retweet)
	nmap <silent> <buffer> q  <Plug>(tweetvim_action_qt)
	nmap <silent> <buffer> <leader>e  <Plug>(tweetvim_action_expand_url)
	nmap <silent> <buffer> <leader>F  <Plug>(tweetvim_action_favstar)
	nmap <silent> <buffer> <Leader><Leader>  <Plug>(tweetvim_action_reload)
	nmap <silent> <buffer> j <Plug>(tweetvim_action_cursor_down)
	nmap <silent> <buffer> k <Plug>(tweetvim_action_cursor_up)

	nmap <silent> <buffer> ff  <Plug>(tweetvim_action_page_next)
	nmap <silent> <buffer> bb  <Plug>(tweetvim_action_page_previous)

	nmap <silent> <buffer> H  <Plug>(tweetvim_buffer_previous)
	nmap <silent> <buffer> L  <Plug>(tweetvim_buffer_next)

	nnoremap <silent> <buffer> a :call unite#sources#tweetvim_action#start()<CR>
	nnoremap <silent> <buffer> t :call unite#sources#tweetvim_timeline#start()<CR>
endfunction

au FileType tweetvim_say call s:tweetvim_say_keybind()
function! s:tweetvim_say_keybind()
	nnoremap <buffer> <silent> q :bd!<CR>
	inoremap <buffer> <silent> <C-CR> <ESC><CR>

	inoremap <buffer> <silent> <C-i> <ESC>:call unite#sources#tweetvim_tweet_history#start()<CR>
	nnoremap <buffer> <silent> <C-i> <ESC>:call unite#sources#tweetvim_tweet_history#start()<CR>
endfunction

nnoremap <silent> <C-t><C-u> :<C-u>TweetVimUserStream<CR>
nnoremap <silent> <C-s>	:<C-u>TweetVimSay<CR>

