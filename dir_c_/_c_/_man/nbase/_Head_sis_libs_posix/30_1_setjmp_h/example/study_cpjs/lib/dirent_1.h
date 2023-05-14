#ifndef dirent_1
#define dirent_1
#include "h_1.h"

int scandir_с(char *dir_path, struct dirent ***namelist, int (*select)(const struct dirent *), int (*compare)(const struct dirent **, const struct dirent **), const char *file, const int line, int st__mo, int st__if, int st__re);
int readdir_r_с(DIR *restrict dirp, struct dirent *restrict entry, struct dirent **restrict result, const char *file, const int line, int st__mo, int st__if, int st__re);
struct dirent *readdir_с(DIR *dirp, const char *file, const int line, int st__mo, int st__if, int st__re);
DIR *opendir_с(char *dirname, const char *file, const int line, int st__mo, int st__if, int st__re);
int dirfd_с(DIR *dirp, const char *file, const int line, int st__mo, int st__if, int st__re);


#endif