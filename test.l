
%{
    #include<stdio.h>
    int valid_int=0, valid_float=0;
%}

%%

%%

  
int main()
{
  yylex();
  printf("test\n");
  return 0;
}