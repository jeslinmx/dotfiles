if [ $SHLVL -eq 1 ]
    function fish_greeting
        neofetch --config ~/.config/neofetch/simple.conf
    end
else
    set fish_greeting ''
end
