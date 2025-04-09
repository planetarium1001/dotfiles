set DOTFILES ~/Projects/dotfiles/

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function yazi
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    /usr/bin/yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

function dotfiles
    if ! test -z $argv[1]
        if test $argv[1] = "c"; or test $argv[1] = "config"
            cd $DOTFILES/config
        else if test $argv[1] = "d"; or test $argv[1] = "docs"
            cd $DOTFILES/docs
        else if test $argv[1] = "s"; or test $argv[1] = "scripts"
            cd $DOTFILES/scripts
        else if test $argv[1] = ".c"; or test $argv[1] = ".config"
            cd ~/.config
        else if test $argv[1] = ".s"; or test $argv[1] = ".scripts"
            cd ~/.scripts
        end
    else
        cd $DOTFILES
    end
    if ! test -z $argv[2]
        cd $argv[2]
    end
end

abbr -a d dotfiles
