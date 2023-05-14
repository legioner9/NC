#ifndef io_1
#define io_1

int or_ist_c(const char *filename);
int is_ist_c(const char *filename, const char *file, const int line);
int remove_c(const char *filename, const char *file, const int line);
size_t fread_c(void *restrict ptr, size_t size, size_t count, FILE *stream, const char *file, const int line);
size_t fwrite_c(const void *ptr, size_t size, size_t count, FILE *stream, const char *file, const int line);
long int ftell_c(FILE *stream, const char *file, const int line);
int putchar_c(int character, const char *file, const int line);
int fputc_c(int character, FILE *stream, const char *file, const int line);
int getc_c(FILE *stream, const char *file, const int line);
int fgetc_c(FILE *stream, const char *file, const int line);
int fputs_c(const char *str, FILE *stream, const char *file, const int line);
int fclose_c(FILE *stream, const char *file, const int line);
char *fgets_c(char *str, int num, FILE *stream, const char *file, const int line);
int fseek_c(FILE *stream, int offset, int endSet, const char *file, const int line);
FILE *fopen_c(const char *path, const char *mode, const char *file, const int line);


#endif