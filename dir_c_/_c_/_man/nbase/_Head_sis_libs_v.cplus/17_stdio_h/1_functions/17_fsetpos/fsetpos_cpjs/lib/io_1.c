#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <float.h>
#include <string.h>
#include <math.h>
#include <errno.h>
#include <unistd.h>

#define DEBUG false

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV
checked int : Chint
hight from to

*/

/*#*/ FILE *fopen_c(const char *path, const char *mode, const char *file, const int line)
{
    FILE *stream;
    if ((stream = fopen(path, mode)) != NULL)
    {
        return stream;
    }
    else if (stream == NULL)

    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fopen_s path = %s, mode = %s, errno = %d\n", path, mode, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fseek_c(FILE *stream, int offset, int endSet, const char *file, const int line)
{
    if ((fseek(stream, offset, endSet)) != 0)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fseek_s ftell(stream) = %ld, offset = %d, errno = %d\n", ftell(stream), offset, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ char *fgets_c(char *str, int num, FILE *stream, const char *file, const int line)
{
    if (fgets(str, num, stream) == NULL)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgets_s ftell(stream) = %ld, str = %s, num = %d, errno = %d\n", ftell(stream), str, num, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fclose_c(FILE *stream, const char *file, const int line)
{
    if (fclose(stream) == EOF)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fclose_s ftell(stream) = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fputs_c(const char *str, FILE *stream, const char *file, const int line)
{
    if (fputs(str, stream) == EOF)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fputs_s ftell(stream) = %ld,  str = %s errno = %d\n", ftell(stream), str, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int fgetc_c(FILE *stream, const char *file, const int line)
{
    int c = fgetc(stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetc_c ftell(stream) = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}

/*#*/ int getc_c(FILE *stream, const char *file, const int line)
{
    int c = getc(stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetc_c ftell(stream) = %ld, errno = %d\n", ftell(stream), errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}

/*#*/ int fputc_c(int character, FILE *stream, const char *file, const int line)
{
    int c = fputc(character, stream);
    if (character == c)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fputc_c ftell(stream) = %ld, character = %d, errno = %d\n", ftell(stream), character, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}

/*#*/ int putchar_c(int character, const char *file, const int line)
{
    int c = putchar(character);
    if (character == c)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from putchar_c ftell(stream) = %ld, character = %d, errno = %d\n", ftell(stdout), character, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return c;
}

/*#*/ long int ftell_c(FILE *stream, const char *file, const int line)
{
    long int a = ftell(stream);
    if (-1L == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from ftell_s errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ size_t fwrite_c(const void *ptr, size_t size, size_t count, FILE *stream, const char *file, const int line)
{
    size_t a = fwrite(ptr, size, count, stream);
    if (ferror(stream))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fwrite_c ftell(stream) = %ld,size = %d,count = %d errno = %d\n", ftell(stream), size, count, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ size_t fread_c(void *restrict ptr, size_t size, size_t count, FILE *stream, const char *file, const int line)
{
    size_t a = fread(ptr, size, count, stream);
    if (a != count)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fread_c ftell(stream) = %ld,size = %d,count = %d errno = %d\n", ftell(stream), size, count, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int remove_c(const char *filename, const char *file, const int line)
{
    if (remove(filename))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from remove_c filename = %s, errno = %d\n", filename, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int is_ist_c(const char *filename, const char *file, const int line)
{
    if (-1 == access(filename, 0))
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from is_ist_c filename = %s, errno = %d\n", filename, errno);
        perror("exit(errno) with");
        exit(errno);
    }
}

/*#*/ int or_ist_c(const char *filename)
{
    return (access(filename, 0) != -1);
}

/*#*/ int fsetpos_c(FILE *stream, fpos_t *pos, const char *file, const int line)
{
    int a = fsetpos(stream, pos);
    if (0 != a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fsetpos_c ftell(stream) = %ld, pos = %d, errno = %d\n", ftell(stream), pos, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*#*/ int fgetpos_c(FILE *stream, fpos_t *pos, const char *file, const int line)
{
    int a = fgetpos(stream, pos);
    if (0 != a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from fgetpos_c ftell(stream) = %ld, pos = %d, errno = %d\n", ftell(stream), pos, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}