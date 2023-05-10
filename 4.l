%option noyywrap

%{
#include<stdio.h>    
%}

%%
0152[0-9]{7} printf("Teletalk number");
.* printf("Not teletalk number");
%%

int main()
{
    yylex();
    return 0;
}