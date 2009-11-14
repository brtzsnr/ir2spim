#include <stdlib.h>

// Print error message and exit
#define Failure(message) do { fprintf(stderr,"Eroare: %s\n",message); exit(1); } while(0)

// Print error message with arguments and exit
#define Failure2(message, arg) do { fprintf(stderr, message, arg); exit(1); } while(0)

// Return a lowercase version of the original string, allocated using malloc
char *strLowerCase(const char *str);
