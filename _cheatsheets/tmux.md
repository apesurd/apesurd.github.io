---
title: tmux
excerpt: tmux is a terminal multiplexer
---

Tmux is a terminal multiplexer. It allows you to have multiple terminal windows in a single terminal.

## List down all active tmux sessions
### Outside tmux
> `tmux list-sessions`
> `tmux ls`

### Inside tmux
> `:ls ` (when inside another session)

## To invoke tmux command inside tmux session
> `<Ctrl>+a` 

## Start a new session
### Inside tmux
> `:new`

### Outside tmux
> `tmux new -s <session-name>`

## Detaching a tmux session 
> `:detach` OR `<Ctrl>+a d`

## Kill a tmux session
> `:kill-session`

## Attach to a tmux session
> `tmux a -t mysession`

## Create a window in the session 
> `<Ctrl>+a c `

## List windows in the current session 
> `<Ctrl>+a w`

## Rename current window
> `<Ctrl>+a ,`

## Move across windows in Tmux
### Move left
> `<Ctrl>+a h`

### Move right
> `<Ctrl>+a l`

### Move up
> `<Ctrl>+a k`

### Move down
> `<Ctrl>+a j`

## Maximize current window 
> `<Ctrl>+a m`

## Splitting window in half
### Vertical
> `<Ctrl>+a |`

### Horizontal
> `<Ctrl>+a -`


# My local configuration in .zshrc
I have configured my zsh to open a project in a tmux session, with neovim as the editor
and zsh as the shell below the editor window.
```zsh
nvop () {
    WORK_DIR=$1
    if [[ "$WORK_DIR" == "" ]]
    then
        echo "No work directory"
    fi
    echo "Work directory: $WORK_DIR"

    if [[ "$SESSION" == "" ]]
    then
        SESSION="work";
    fi
    echo "Session name: $SESSION"

    tmux kill-session -t $SESSION 
    tmux new-session -s $SESSION -d 
    tmux send-keys -t $SESSION:0.0 "cd $WORK_DIR && nv ." ENTER
    tmux split-window -v
    tmux resize-pane -t $SESSION:0.1 -D 10
    tmux send-keys -t $SESSION:0.1 "cd $WORK_DIR && clear" ENTER
    tmux -2 attach-session -d -t $SESSION:0.0 
}
```

Here is a more comprehensive cheat-sheet for tmux commands: https://tmuxcheatsheet.com/ 


