if test -r /usr/share/cachyos-fish-config/cachyos-config.fish
    source /usr/share/cachyos-fish-config/cachyos-config.fish
end

if test -d $HOME/.local/bin
    fish_add_path --move --path $HOME/.local/bin
end

if test -d $HOME/.lmstudio/bin
    fish_add_path --move --path $HOME/.lmstudio/bin
end

if test -d $HOME/.antigravity/antigravity/bin
    fish_add_path --move --path $HOME/.antigravity/antigravity/bin
end

if test -d $HOME/.opencode/bin
    fish_add_path --move --path $HOME/.opencode/bin
end

if status is-interactive
    if type -q starship
        starship init fish | source
    end

    if type -q thefuck
        thefuck --alias | source
    end

    if type -q tmux; and test -z "$TMUX"
        tmux attach; or tmux new-session
    end
end
