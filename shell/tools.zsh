# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/tools/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/tools/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/tools/monoconda3/etc/profile.d/conda.sh"
    else
        export PATH="/tools/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<