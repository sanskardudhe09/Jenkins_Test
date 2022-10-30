#include <stdio.h>
#include "sub.h"
int main()
{
    int num1 = 10;
    int num2 = 5;
    int res;
    res = sub(num1, num2);
    printf("The difference of the given numbers : %d\n", res);
    return 0;
}
