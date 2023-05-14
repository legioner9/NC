#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>
#include <time.h>
#include <uchar.h>
#include <wchar.h>
#include <wctype.h>

// LIB FROM $HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/l3p_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"
#include "lib/fcntl_1.h"
#include "lib/dirent_1.h"
#include "lib/socket_1.h"
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <aio.h>
#include <signal.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <glob.h>
#include <grp.h>

#define _XOPEN_SOURCE 500
// #define _GNU_SOURCE

// while (*envp != NULL)
//     printf("  %s\n", *(envp++));

//  cat /etc/group
//  st:x:1000:

int main()
{
    struct group *g = NULL;
    char **p = NULL;

    g = getgrnam("st");
    if (g != NULL)
    {
        printf("gr_name = \"%s\"\n", g->gr_name);
        printf("gr_passwd = \"%s\"\n", g->gr_passwd);
        printf("gr_gid = \"%d\"\n", g->gr_gid);
        printf("gr_members = ");
        p = g->gr_mem;
        while (*p != NULL)
        {
            printf("\"%s\" ", *p);
            p++;
        };
        printf("\n");
    };
    return 0;
};