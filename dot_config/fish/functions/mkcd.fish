function mkcd
    if test (count $argv) -ne 1
        echo "Usage: mkcd <directory>"
        return 1
    end

    set dir $argv[1]

    if test -d $dir
        echo "Directory '$dir' already exists. Changing anyway."
        cd $dir
        return
    end

    mkdir -p $dir
    cd $dir
end
