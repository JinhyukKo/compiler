%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token NUMBER
%token PLUS MINUS MULTIPLY DIVIDE EOL

%left PLUS MINUS
%left MULTIPLY DIVIDE
%nonassoc EOL

%%
input:
    /* 빈 줄 허용 */
    | input line
    ;

line:
    expr EOL { printf("Result: %d\n", $1); }
    | EOL
    ;

expr:
    NUMBER
    | expr PLUS expr      { $$ = $1 + $3; }
    | expr MINUS expr     { $$ = $1 - $3; }
    | expr MULTIPLY expr  { $$ = $1 * $3; }
    | expr DIVIDE expr    { 
                            if ($3 == 0) {
                                yyerror("Error: Division by zero");
                                $$ = 0;
                            } else {
                                $$ = $1 / $3;
                            }
                          }
    | '(' expr ')'        { $$ = $2; }
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
