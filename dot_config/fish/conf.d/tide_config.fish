# Setting prompt character
# vi_icon_default necessary due to a bug: https://github.com/IlanCosman/tide/issues/622
if fish_is_root_user
	set -gx tide_character_icon '#'
	set -gx tide_character_vi_icon_default '#'
else
    set -gx tide_character_icon '$'
    set -gx tide_character_vi_icon_default '$'
end
set -gx tide_context_always_display true
