#ifndef socket_1
#define socket_1
#include "h_1.h"

int socket_с(int domain, int type, int protocol, const char *file, const int line, int st__mo, int st__if, int st__re);
ssize_t sendto_с(int socket, const void *message, size_t length, int flags, const struct sockaddr *dest_addr, socklen_t dest_len, const char *file, const int line, int st__mo, int st__if, int st__re);
ssize_t send_с(int socket, const void *buffer, size_t length, int flags, const char *file, const int line, int st__mo, int st__if, int st__re);
ssize_t recvfrom_c(int socket, void *restrict buffer, size_t length, int flags, struct sockaddr * address, socklen_t *restrict address_len, const char *file, const int line, int st__mo, int st__if, int st__re);
ssize_t recv_с(int socket, void *buffer, size_t length, int flags, const char *file, const int line, int st__mo, int st__if, int st__re);
int listen_с(int socket, int backlog, const char *file, const int line, int st__mo, int st__if, int st__re);
int getsockname_с(int socket, struct sockaddr *restrict address, socklen_t *restrict address_len, const char *file, const int line, int st__mo, int st__if, int st__re);
int connect_с(int socket, const struct sockaddr *address, socklen_t address_len, const char *file, const int line, int st__mo, int st__if, int st__re);
int bind_с(int socket, const struct sockaddr *address, socklen_t address_len, const char *file, const int line, int st__mo, int st__if, int st__re);
int accept_с(int socket, struct sockaddr *restrict address, socklen_t *restrict address_len, const char *file, const int line, int st__mo, int st__if, int st__re);


#endif