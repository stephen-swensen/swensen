#include <stdio.h>
int main(void)
{
    int y, x = (y = 3, y + 1);
    printf("%d", x);
}
