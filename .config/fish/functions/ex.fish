function ex
    if test (count $argv) -eq 0
        echo "Usage: ex <file>"
        return 1
    end

    for file in $argv
        if not test -f $file
            echo "ex: '$file' is not a valid file"
            continue
        end

        switch $file
            case '*.tar.bz2'
                tar xjf $file
            case '*.tar.gz'
                tar xzf $file
            case '*.tar.xz'
                tar xJf $file
            case '*.tar.zst'
                unzstd $file
                set tmpfile (string replace -r '\.zst$' '' $file)
                tar xf $tmpfile
                rm $tmpfile
            case '*.tar'
                tar xf $file
            case '*.bz2'
                bunzip2 $file
            case '*.gz'
                gunzip $file
            case '*.xz'
                unxz $file
            case '*.zip'
                unzip $file
            case '*.rar'
                unrar x $file
            case '*.7z'
                7z x $file
            case '*.Z'
                uncompress $file
            case '*'
                echo "ex: cannot extract '$file' — unsupported archive format"
        end
    end
end
