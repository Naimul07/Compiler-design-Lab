%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A B NL

%%
stmt : S NL{
    printf("valid string\n");
    exit(0);
};
S: A S B | 
;
%%

int main()
{
    printf("Enter the string\n");
    yyparse();
    
}
int yyerror()
{
    printf("invalid string\n");
    exit(0);
}
