#!/bin/bash

# https://stackoverflow.com/questions/3200252/prompt-user-to-select-a-directory-with-a-bash-script-and-read-result

function sel_dir() {
    dirs=(*/)

    read -p "$(
            f=0
            for dirname in "${dirs[@]}" ; do
                echo "$((++f)): $dirname"
            done

            echo -ne 'Please select a directory > '
    )" selection

    selected_dir="${dirs[$((selection-1))]}"

    echo "You selected '$selected_dir'"
    cd '$selected_dir'
}

function csc() {
    ctags -R
}

function cv() {
    rm -rf cscope.out cscope.files
    find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files # If you have a problem, <== please write this on one line.
    cscope -i cscope.files
}