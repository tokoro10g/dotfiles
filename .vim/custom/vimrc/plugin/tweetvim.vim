" TweetVim
let g:tweetvim_open_buffer_cmd='edit!'
let g:tweetvim_async_post=1
let g:tweetvim_display_source=0
let g:tweetvim_display_icon=0
let g:tweetvim_suppress_update_filetype=[
			\'vimshell',
			\'unite'
			\]

function! g:echofav(from_user, status)
  echohl tweetvim_notif_fav | echo "★ " . a:from_user.screen_name . " " . a:status.text | echohl None
endfunction

function! g:echounfav(from_user, status)
  echohl tweetvim_notif_unfav | echo "☆ " . a:from_user.screen_name . " " . a:status.text | echohl None
endfunction

function! g:echort(from_user, status)
  echohl tweetvim_notif_retweet | echo "RT " . a:from_user.screen_name . " " . a:status.text | echohl None
endfunction

function! g:echomention(from_user, status)
  echohl tweetvim_notif_mention | echo "ME " . a:from_user.screen_name . " " . a:status.text | echohl None
endfunction

let s:bundle=neobundle#get("TweetVim")
function! s:bundle.hooks.on_source(bundle)
	call tweetvim#hook#add('notify_fav','g:echofav')
	call tweetvim#hook#add('notify_unfav','g:echounfav')
	call tweetvim#hook#add('notify_retweet','g:echort')
	call tweetvim#hook#add('notify_mention','g:echomention')
endfunction
