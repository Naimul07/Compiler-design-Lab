%option noyywrap

%{
#include<stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* { printf("valid identifier"); }
.+ {printf("invalid identifier");}

%%

int main(void) {
    yylex();
    return 0;
}
