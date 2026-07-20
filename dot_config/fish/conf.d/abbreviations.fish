# Fish abbreviations

# Directory listing with eza
abbr -a l -- "eza"
abbr -a ll -- "eza -l"
abbr -a la -- "eza -a"
abbr -a lla -- "eza -la"

# Change directory shortcuts
abbr -a .. -- "cd .."
abbr -a ... -- "cd ../.."
abbr -a .... -- "cd ../../.."

# Git shortcuts
abbr -a gs -- "git status"
abbr -a ga -- "git add"
abbr -a gc -- "git commit"
abbr -a gp -- "git push"
abbr -a gl -- "git log"
abbr -a gd -- "git diff"
abbr -a gac -- "git autocommit"
abbr -a gcm --set-cursor -- "git commit -m \"%\""
abbr -a gca --set-cursor -- "git commit --amend -m \"%\""

# Show IP
abbr -a ips -- "ip -c -br address show"

# Edit file
abbr -a e -- "$EDITOR"
