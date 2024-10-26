%{
    
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();

%}

%token TEOF TIDEN TNUM TASSIGN TADD TMUL TDIV TSEMI TDOT TERROR

%left TADD
%left TMUL TDIV


%%

expr:
    expr TADD expr         { printf("Add operation\n"); $$ = $1 + $3; }
    | expr TMUL expr       { printf("Multiply operation\n"); $$ = $1 * $3; }
    | expr TDIV expr       { printf("Division operation\n"); $$ = $1 / $3; }
    | TNUM                 { $$ = atoi(yytext); }
    | TIDEN
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "%s\n", s);
}

int main() {
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}
