#!/usr/bin/env fish

if not type -q fisher
    echo -e "\e[1;30;41m ERROR \e[0;31m Fisher not found, skipping plugin installation.\e[0m" >&2
    exit 1
end

fisher install IlanCosman/tide@v6

tide configure --auto --style=Lean --prompt_colors='16 colors' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Dotted --prompt_spacing=Sparse --icons='Few icons' --transient=Yes
