# Start x server on login
if [ $(tty) = "/dev/tty1" ]; then
    sx
    killall picom pipewire gnome-polkit > /dev/null 2>&1
fi

# Custom Extensions
source ~/.config/zsh/extensions/autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/extensions/syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# History
HISTFILE=~/.config/zsh/history
HISTSIZE=100
SAVEHIST=500

# Aliases
alias sudo='sudo ' # Make sudo work with aliases
alias git="TZ=UTC git" # Hotfix for patch file creation

alias clear="print '\E[H\E[3J' && clear" # Clear buffer history too
alias grep="grep -i" # Case insensitive grep
alias rg="rg -S" # Smart case ripgrep

alias ls="lsd -A" # Ls command with icons
alias lt="lsd -A --tree" # Recursively list files as tree
alias ll="lsd -Al" # List files with verbose info

alias pac="pacman" # Short hand for package manager
alias nv="nvim" # Short hand for text editor
alias :q="exit" # Useful when I accidentally type this after working in vim

# Custom prompt
export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init zsh)"

# Patch delete key for zsh
tput smkx
bindkey "^[[3~" delete-char

# Custom fetch / greeter
~/.config/zsh/coffee
