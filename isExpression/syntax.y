%{
    
#include <stdio.h>
#include <stdlib.h>
#include "lex.yy.c"
void yyerror(const char *s);
int yylex(); // Lex에서 정의한 yylex 함수 선언

%}

%token TIDEN TNUM

%left '+' '-'
%left '*' '/'

%%
S : E ';'{
        printf("Expression evaluated.\n");
    };
E : E '+' T | T ;
T : T'*' F | F;
F : '(' E ')' | TIDEN | TNUM;
%%



int main() {
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "%s\n", s);
}