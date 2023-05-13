%{
#include <stdio.h>
%}
%option noyywrap
%%

[0-9]+[eE][+-]?[0-9]+ { printf("Exponential number: %s\n", yytext); }
[0-9]*\.[0-9]+[eE][+-]?[0-9]+ { printf("Exponential number: %s\n", yytext); }
[0-9]+ { printf("Integer: %s\n", yytext); }
[0-9]*\.[0-9]+ { printf("Real number: %s\n", yytext); }
.|\n { /* ignore other characters */ }

%%

int main() {
    yylex();
    return 0;
}
