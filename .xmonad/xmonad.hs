import XMonad
import XMonad.Config.Xfce
import XMonad.Hooks.SetWMName

main = xmonad xfceConfig
	{ terminal		= "xfce4-terminal"
	, modMask		= mod4Mask
	, startupHook	= setWMName "LG3D"
	}
