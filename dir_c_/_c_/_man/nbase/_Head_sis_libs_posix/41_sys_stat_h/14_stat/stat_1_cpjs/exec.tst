#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/41_sys_stat_h/14_stat/stat_1_cpjs/exec._tst"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
dir=$(prs_f -d "$filename")
cd "$dir" || qq_exit
. "$dir"/exec.sh &>/dev/null

cd "$dir"/use/ || qq_exit

./main.bexe &>res

flag=1
if ! diff -q ""$dir"/use/pre" ""$dir"/use/res" >/dev/null; then
    # if ! ./main.bexe >/dev/null; then

    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "ANY in $dir fail" >&2
else
    echo "ALL in $dir true"
fi

unset filename
