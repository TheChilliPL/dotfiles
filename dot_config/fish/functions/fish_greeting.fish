function fish_greeting
    set -l uptime (uptime -p | string replace 'up ' '')
    echo -e "\e[2mWelcome to \e[0;1;32m$(hostname)\e[0;2m at $(date '+\e[0m%F \e[1m%H:%M:%S')\e[0;2m."
    echo -e "\e[2mUptime: \e[0;1m$uptime\e[0;2m."
    if command -q gitnudge
        gitnudge
    end
end
