source /usr/share/cachyos-fish-config/cachyos-config.fish

# Import pywal colors
if test -f ~/.cache/wal/colors.fish
    source ~/.cache/wal/colors.fish
end

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

#starship init fish | source

fish_add_path /home/vv0rth/.spicetify
alias config='/usr/bin/git --git-dir=/home/vv0rth/.dotfiles/ --work-tree=/home/vv0rth'
