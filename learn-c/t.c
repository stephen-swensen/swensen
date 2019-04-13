#include <stdio.h>

//testing
int* max(int* a, int* b) {
    if(*a > *b)
        return a;
    else
        return b;
}

void getInput(int* a, int* b) {
    printf("enter first number: ");
    scanf("%d", a);
    printf("enter second number: ");
    scanf("%d", b);
}

int main() {
//    int* p;
//    int i, j;
//    getInput(&i, &j);
//    p = max(&i, &j);
//    printf("max is %d\n", *p);
//
//    printf("change int pointer p: ");
//    scanf("%d",p);
//    printf("now *p=%d, i=%d, j=%d\n", *p, i, j);
    
    int c;
    while ((c = getchar()) != EOF)
        putchar(c);
}
