%{ /* 정의 부분 */
#include <stdio.h>
#include <stdlib.h>
#incude "y.tab.h"
enum tnumb { TEOF, TIDEN, TNUM, TASSIGN, TADD, TMUL, TDIV, TSEMI, TDOT, TERROR };

%}

/* 이름n 치환식 */
letter [a-zA-Z]
digit  [0-9]

%% /* 정의 부분 */
"exit"    return(TEOF);
{letter}({letter}|{digit})*   return(TIDEN);
"="      return(TASSIGN);
"+"       return(TADD);
"-"       return(TADD);
"*"       return(TMUL);
"/"       return(TDIV);
{digit}+  return(TNUM);
";"       return(TSEMI);
"."       return(TDOT);
[ \t\n]   ;
.         return(TERROR);

%% /* 사용자 부프로그램 부분 */
int main()
{
    int tn; /* token number */
    printf("Start of LEX \n");

    while ((tn = yylex()) != 0)
    {
        switch (tn) {
            case TIDEN: printf("Identifier : %s\n", yytext); break;
            case TASSIGN: printf("Assign_op \n"); break;
            case TADD: printf("Add_op \n"); break;
            case TMUL: printf("Mul_op \n"); break;
            case TDIV: printf("Div_op \n"); break;
            case TNUM: printf("Number : %s\n", yytext); break;
            case TSEMI: printf("Semicolon \n"); break;
            case TDOT: printf("Dot \n"); break;
            case TERROR: printf("Lexical Error \n"); break;
        }
    }
    printf("End of LEX \n");
    return 0;
}

int yywrap() {
    return 1;
}
