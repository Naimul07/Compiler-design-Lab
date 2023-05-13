%{
#include"y.tab.h"
extern int yylval;
%}
%option noyywrap
%%
[0-9]+ {yylval= atoi(yytext); return NUM;}
[a-zA-Z]+ {return ALPHA;}
\n {return NL;}
. {return yytext[0];}
%%