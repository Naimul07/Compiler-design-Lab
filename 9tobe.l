%option noyywrap
%{
#include<stdio.h>
%}

%%
am|are|is|was|were|been { printf("'%s' is a form of 'to be' verb.\n", yytext); }
.                    { /* ignore all other characters */ }
%%

int main() {
  yylex();
  return 0;
}
