%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("Int: %s\n", yytext); }
[ \t\n]     ;  // 공백은 무시합니다.
.           { printf("not int: %s\n", yytext); }

%%

// main function
int main(int argc, char **argv) {
    yylex();  // start reading and processing tokens
    return 0;
}

int yywrap() {
    return 1;
}
