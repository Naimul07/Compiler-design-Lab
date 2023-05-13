%{
int n=1,w=0,c=0;
%}

%%
\n {n++;}

[^ \n\t]+ {w++;c=c+yyleng;}
.c++;
%%

int yywrap(void)
{
return 1;
}

int main()
{
extern FILE* yyin;
yyin = fopen("input.txt","r");
yylex();
printf("Line = %d =>Word = %d =>total character = %d \n ",n,w,c);
} 