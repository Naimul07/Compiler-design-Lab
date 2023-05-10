%option noyywrap

%{
#include<stdio.h>    
%}

%%
[+-]?[0-9]*\.[0-9]*$ printf("Floating point number");
.* printf("Not a floating point number");
%%

int main()
{
    yylex();
    return 0;
}