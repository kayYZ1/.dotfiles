function fish_user_key_bindings
    # enable vi mode
    fish_vi_key_bindings

    # cursor shapes (xterm-style, supported by Ghostty)
    function fish_vi_cursor --on-event fish_vi_cursor
        switch $fish_bind_mode
            case default
                # Normal mode → block cursor
                printf '\e[2 q'
            case insert
                # Insert mode → bar cursor
                printf '\e[6 q'
            case visual
                # Visual mode → block cursor (like Vim)
                printf '\e[2 q'
        end
    end
end
