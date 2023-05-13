%option noyywrap

%{
#include<stdio.h>    
%}

%%
015[0-9]{8} printf("Teletalk number");
.* printf("Not teletalk number");
%%

int main()
{
    yylex();
    return 0;
}