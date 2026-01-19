eval "$(starship init zsh)"


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/maxdinkelspiel/.lmstudio/bin"
# End of LM Studio CLI section

export PATH="$HOME/.local/bin:$PATH"

# Added by Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

eval $(thefuck --alias)


# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# 1pass GH plugins
source "$HOME/.config/op/plugins.sh"

test -z "$TMUX" && (tmux attach || tmux new-session)
