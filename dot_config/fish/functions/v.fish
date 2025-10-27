# [V]iew function
# `v <directory>`: List files in the specified directory.
# `v <file>`: View the contents of the specified file using 'bat' if available, otherwise 'cat'.
function v
    if test (count $argv) -ne 1
        echo "Usage: v <directory|file>" >&2
        echo "--- Current directory contents ---" >&2
        eza -la .
        return
    end

    if test -d $argv[1]
        eza -la $argv[1]
    else
        if type -q bat
            bat $argv[1]
        else
            echo -e "\e[1;30;43m WARNING \e[0;33m bat not found. Falling back to cat.\e[0m" >&2
            cat $argv[1]
        end
    end
end
