function s --wraps='sudo pacman -Ss' --description 'alias s=sudo pacman -Ss'
  sudo pacman -Ss $argv
        
end
