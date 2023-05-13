%{
#include<stdio.h>
int yylex(void);
int yyerror(char *s);
%}
%token NL NUM ALPHA
%%
stm: S NL {printf("Correct\n");};
S:ALPHA DIGA ;
DIGA: ALPHA DIGA | NUM DIGA |
%%
int main()
{
    yyparse();
    return 0;
}
int yyerror(char *s)
{
    printf("Error\n");
    return 0;
}