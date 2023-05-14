#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_exec/kbr_etr_cpjs/exec.tst"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
dir=$(prs_f -d "$filename")
cd "$dir" || qq_exit
. "$dir"/compile.sh &>/dev/null

cd "$dir"/use/ || qq_exit

./main.bexe | . wate_kbr_etr.sh &>res

flag=1
if ! diff -q ""$dir"/use/pre" ""$dir"/use/res" >/dev/null; then
    # if ! ./main.bexe >/dev/null; then

    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "ANY in file://$dir fail" >&2
else
    echo "ALL in file://$dir true"
fi

unset filename
