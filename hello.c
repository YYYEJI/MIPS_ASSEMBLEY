#include <stdio.h>

int main(void){
    int i = 1;
    int sum = 0;
    int n = 15;


    while(i<=n)
    {
        if(i%3==0)
            {sum = sum +i;}
        i++;
    }


    printf("%d", sum);
    return 0;
}
