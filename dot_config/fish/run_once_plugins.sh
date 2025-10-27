#!/usr/bin/env fish

if not type -q fisher
    echo -e "\e[1;30;43m WARNING \e[0;33m Fisher not found, skipping plugin installation.\e[0m"
    exit 0
end

fisher install IlanCosman/tide@v6

tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time='24-hour format' --rainbow_prompt_separators=Vertical --powerline_prompt_heads=Sharp --powerline_prompt_tails=Flat --powerline_prompt_style='Two lines, character' --prompt_connection=Solid --powerline_right_prompt_frame=No --prompt_connection_andor_frame_color=Lightest --prompt_spacing=Sparse --icons='Few icons' --transient=No
