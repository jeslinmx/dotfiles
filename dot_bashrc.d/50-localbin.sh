if ! [[ "$PATH" =~ "$HOME/.local/bin" ]]
then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH
