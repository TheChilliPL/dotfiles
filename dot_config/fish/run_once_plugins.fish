#!/usr/bin/env fish

if not type -q fisher
    echo -e "\e[1;30;43m WARNING \e[0;33m Fisher not found, skipping plugin installation.\e[0m" >&2
    exit 0
end

fisher install IlanCosman/tide@v6

tide configure --auto --style=Lean --prompt_colors='16 colors' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Dotted --prompt_spacing=Sparse --icons='Few icons' --transient=Yes

# Setting prompt character
# vi_icon_default necessary due to a bug: https://github.com/IlanCosman/tide/issues/622
if fish_is_root_user
	set -Ux tide_character_icon '#'
	set -Ux tide_character_vi_icon_default '#'
else
	set -Ux tide_character_icon '$'
	set -Ux tide_character_vi_icon_default '$'
end
set -Ux tide_context_always_display true
