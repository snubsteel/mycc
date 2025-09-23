#include <stdio.h>

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "usage: %s <source.c>\n", argv[0]);
        return 1;
    }
    printf("Compiling %s ... (not really, yet!)\n", argv[1]);
    return 0;
}
