#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/40_sys_socket_h/17_socket/csdi_2_v1_cpjs/build.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
dir="$(prs_f -d $filename)"

cd "$dir" || qq_exit

rm use/server.bexe use/client.bexe
cp main.client._c main.c
. exec.sh
cd ..
echo -e "${BLUE}--- mv use/main.bexe client.bexe ---${NORMAL}" #sistem info mesage
mv use/main.bexe use/client.bexe

cd "$dir" || qq_exit
cp main.server._c main.c
. exec.sh
cd ..
echo -e "${BLUE}--- mv use/main.bexe server.bexe ---${NORMAL}" #sistem info mesage
mv use/main.bexe use/server.bexe

cd use/

echo -e "${BLUE}--- ./server.bexe& ---${NORMAL}" #sistem info mesage
./server.bexe &
echo -e "${BLUE}--- USE for result ./client.bexe (int) (int) ---${NORMAL}" #sistem info mesage
echo -e "${BLUE}--- USE for shotdown server ./client.bexe DOWN ---${NORMAL}" #sistem info mesage
unset filename