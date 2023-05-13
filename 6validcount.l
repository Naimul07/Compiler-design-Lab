%option noyywrap

%{
#include<stdio.h>
int num_inde = 0;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* { num_inde++; }
.+ 

%%

int main(void) {
    yylex();
    printf("Number of identifiers: %d\n", num_inde);
    return 0;
}
