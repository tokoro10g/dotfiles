# Reference: http://www.yuuan.net/item/736
function _vimsudo {
	local LAST="${words[$#words[*]]}"
	case "${LAST}" in
		sudo:*)
			local BASEDIR="${LAST##sudo:}"
			BASEDIR="${~BASEDIR}"
			[ -d "${BASEDIR}" ] && BASEDIR="${BASEDIR%%/}/"
			compadd -P 'sudo:' -f $(print ${BASEDIR}*) \
				&& return 0
			;;
		*)
			_vim && return 0
			;;
	esac
	return 1
}

compdef _vimsudo vim
