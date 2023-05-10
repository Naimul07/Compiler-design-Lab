%option noyywrap
%{
#include<stdio.h>
%}

%%
[0-9]+[eE^][+-]?[0-9]+ { printf("%s is a valid exponential number\n", yytext); }
.+ {printf("%s is not a valid exponential number\n", yytext);}

%%

int main(void) {
    yylex();
    return 0;
}
