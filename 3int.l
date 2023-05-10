%option noyywrap
%{
    #include<stdio.h>
%}

%%
^[+-]?[0-9]+$ printf("integer number\n");
.* printf("Not an integer number\n");
%%

int main()
{
    yylex();
    return 0;
}