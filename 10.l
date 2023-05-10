%option noyywrap
%{
#include <stdio.h>
%}

DIGIT [0-9]
REAL {DIGIT}+(\.{DIGIT}+)?([Ee][+-]?{DIGIT}+)?

%%

{REAL}[-+]{REAL}[iI] {
    printf("Valid complex number: %s\n", yytext);
}

. {
    printf("Invalid input: %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}
