if neobundle#tap('jazzradio.vim')
	call neobundle#config({
				\	'autoload' : {
				\		'unite_sources' : [
				\			'jazzradio'
				\		],
				\		'commands' : [
				\			'JazzradioUpdateChannels',
				\			'JazzradioStop',
				\			{
				\				'name' : 'JazzradioPlay',
				\				'complete' : 'customlist,jazzradio#channel_id_complete'
				\			}
				\		],
				\		'function_prefix' : 'jazzradio'
				\	}
				\})
endif
