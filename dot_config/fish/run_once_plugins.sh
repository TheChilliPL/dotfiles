#!/usr/bin/env fish

if not type -q fisher
    echo -e "\e[1;30;43m WARNING \e[0;33m Fisher not found, skipping plugin installation.\e[0m"
    exit 0
end

fisher install IlanCosman/tide@v6
