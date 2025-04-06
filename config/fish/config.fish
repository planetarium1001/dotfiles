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
