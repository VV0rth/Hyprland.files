function ssh-mc-server --wraps="kitten ssh -i /home/vv0rth/.ssh/mcserver 'peyton@192.168.86.249'" --description "alias ssh-mc-server=kitten ssh -i /home/vv0rth/.ssh/mcserver 'peyton@192.168.86.249'"
    kitten ssh -i /home/vv0rth/.ssh/mcserver 'peyton@192.168.86.249' $argv
end
