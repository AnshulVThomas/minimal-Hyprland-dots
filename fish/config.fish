if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_prompt
    # Colors
    set_color cyan
    set user (whoami)
    set dir (string replace -r "^$HOME" "~" $PWD) 
    # prompt_pwd

    # First line → curve and user info
    echo -n "╭── $user ($dir)"

    # Newline
    echo

    # Second line → bottom curve + arrow head
    set_color green
    echo -n "╰─── "
    set_color normal
end
source "$HOME/.cargo/env.fish"
