# .bashrc/.profile

# Source global definitions
if [ -f /etc/bash/bashrc ]; then
    . /etc/bash/bashrc
fi

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
