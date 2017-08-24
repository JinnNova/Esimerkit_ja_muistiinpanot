#include <stdio.h>
#include <stdlib.h>

int main(){

  int i;
  int n = 6;
  int m = 5;

  /* ** on double pointer */
  int **array;

  array = malloc(sizeof(int*)*n);

  for(i=0;i<n;i++){
    array[i] = malloc(sizeof(int)*m);
  }
  for(i=0;i<n;i++){
    array[2][i] = 5;
  }

  printf("%d",array[2][3]);

  return 0;
}
