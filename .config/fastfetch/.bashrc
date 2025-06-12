source ~/.config/aliases.txt
eval "$(oh-my-posh init bash --config /home/matt/.config/ohmyposh/theme.json)"
eval "$(zoxide init bash)"

#ssh-add
fastfetch
cd ~/mhome

export XCURSOR_SIZE=32
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export PATH="/home/matt/.local/bin:/home/matt/bin:/home/matt/.emacs.d/bin:$PATH"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# If you use zoxide.

cd() {
    if [ $# -eq 0 ]; then
        # Change to a default directory when no arguments are provided
        cd ~/mhome || return
    else
        # Fall back to the __zoxide_z function when arguments are present
        __zoxide_z "$@"
    fi
}

# If you don't use zoxide
#function cd() {
#    if [ $# -eq 0 ]; then
#        builtin cd ~/mhome
#    else
#        builtin cd "$@"
#    fi
#}
