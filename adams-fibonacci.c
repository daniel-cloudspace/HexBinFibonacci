#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
  int a=1, b=1, n;
  int swap=0;
  int i;

  if(argc > 1) {
    n = atoi(argv[1]);
  }
  if(argc < 1 || n < 3) {
    printf("Syntax: ./adams-fibonacci n");
    exit(EXIT_FAILURE);
  }

  printf("%d\n%d\n", a, b);

  for(i=3; i<n; i++) {
    if(!swap) {
      a = a + b;
      printf("%d\n", a);
      swap = 1;
    } else {
      b = a + b;
      printf("%d\n", b);
      swap = 0;
    }
  }

  return 0;
}
