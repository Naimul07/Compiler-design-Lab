%option noyywrap

%{
    #include<stdio.h>
    
%}

%%
.*cse.* printf("Matched pattern: cse\n");
.|\n      /* ignore all other characters */
%%

int main()
{
    yylex();
    return 0;
}