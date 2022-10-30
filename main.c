#include <stdio.h>
#include "sub.h"
int main()
{
    int num1 = 8;
    int num2 = 2;
    int res;
    res = sub(num1, num2);
    printf("The difference of the given numbers : %d\n", res);
    return 0;
}
