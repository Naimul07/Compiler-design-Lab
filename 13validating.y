%{
#include<stdio.h>
int yylex(void);
int yyerror(char *);
%}
%token NUMBER

%%
st:exp{printf("=%d\n",$1);};
exp:exp '+'NUMBER{$$=$1+$3;}
|exp '-'NUMBER{$$=$1-$3;}
|exp '*'NUMBER{$$=$1*$3;}
|exp '/'NUMBER{if($3==0){printf("divide by zero\n");}else { $$=$1/$3;}}
|NUMBER{$$=$1;}
%%
int main()
{
    yyparse();
    return 0;
}
int yyerror(char *s)
{
    printf("%s\n",s);
    return 0;
}