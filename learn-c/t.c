#include <stdio.h>
#include <math.h>

#define SIZE 7

//  x = 43
//  i   j   k   vk 
//  0   6   3   9
//  3   6   4   21
//  4   6   5   32
//  5   6   

int binsearch(int x, int v[], int size) {
    int binsearch(int x, int v[], int i, int j) {
        printf("x=%i, i=%i, j=%i\n", x, i, j);
        int k = (i + j) / 2;
        printf("k=%i\n", k);
        int vk = v[k];
        printf("vk=%i\n", vk);
        if (i > j)
            return -1;
        else if (vk == x)
            return k;
        else if (vk > x)
            return binsearch(x, v, i, k-1);
        else if (vk < x)
            return binsearch(x, v, k+1, j);
    };

    return binsearch(x, v, 0, size-1);
}


int main() {
    int v[SIZE] = { 3, 4, 8, 9, 21, 32, 43 };

    for(int i = 0; i < SIZE; i++)
        printf("%i\n\n", binsearch(v[i], v, SIZE));

    printf("%i\n\n", binsearch(0, v, SIZE));
    printf("%i\n\n", binsearch(200, v, SIZE));
}

