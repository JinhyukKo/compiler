%{ /* 정의 부분 */
#include "syntax.tab.h"
%}

/* 이름n 치환식 */
letter [a-zA-Z]
digit  [0-9]

%% /* 정의 부분 */
{letter}({letter}|{digit})* return(TIDEN);
"="       return(yytext[0]);
"+"       return(yytext[0]);
"-"       return(yytext[0]);
"*"       return(yytext[0]);
"/"       return(yytext[0]);
{digit}+  return(TNUM);
";"       return(yytext[0]);
"."       return(yytext[0]);
[ \t\n]   ;

%%

int yywrap() {
    return 1;
}
