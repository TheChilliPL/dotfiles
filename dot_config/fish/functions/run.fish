function run --description "Run command detached from terminal, silent, and disowned"
    if test (count $argv) -eq 0
        echo "Usage: run <command> [args...]" >&2
        return 1
    end

    nohup $argv >/dev/null 2>&1 </dev/null & disown
    echo "Running $1..."
end
