
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int p1[],int *ans);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int ArrNum[] = {12,-8,19,17,-6,-13,18,23};              //Declaration of Array
    int ans;
    printf("assembly proc calling from  from C! \n");
getch();

    
    asmfunc(ArrNum,&ans);                                   //assembly proc calling
   
   getch();
    
    
    printf("Total Number of Negative Numbers:%d \n",ans);  // printing in c
    
  
    
    return 0;
}