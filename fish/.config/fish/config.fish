set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# This function sets the tab/window title
function fish_title
    # 'prompt_pwd' shortens the path (e.g., ~/p/my-project)
    # If you want STRICTLY just the folder name, change the line below to: echo $PWD | path basename
    prompt_pwd
end

starship init fish | source

# Check if the terminal is Kitty
if test "$TERM" = "xterm-kitty"
    clear 
    fastfetch
end

# Initialize fnm (nodejs) and uv (python)
fnm env --use-on-cd | source
uv generate-shell-completion fish | source
