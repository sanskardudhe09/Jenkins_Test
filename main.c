#include <stdio.h>
#include "sub.h"
int main()
{
    int num1, num2;
    int res;
    printf("Input any two numbers separated by comma : ");
    scanf("%d,%d", &num1, &num2);
    res = sub(num1, num2);
    printf("The difference of the given numbers : %d\n", res);
    return 0;
}
