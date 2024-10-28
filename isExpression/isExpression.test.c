#include <stdio.h>
#include <stdlib.h>
#include "lex.yy.c" 
#include "syntax.tab.h" // Bison에 의해 생성된 헤더 파일
#include "syntax.tab.c" // Bison에 의해 생성된 C 파일

// yylex() 함수의 외부 선언
int yylex();
int yyparse(); // yyparse() 함수의 외부 선언
void yyerror(const char *s);
void run_tests(const char *tests[], int num_tests);

int main() {
    // 테스트할 문자열 배열
    const char *test_cases[] = {
        "3 + 4 * (2 - 1);",
        "a + b * c;",
        "5 + 7;",
        "(1 + 2) * (3 + 4);",
        "x / y - z;"
    };

    int num_tests = sizeof(test_cases) / sizeof(test_cases[0]); // 테스트 케이스 수

    run_tests(test_cases, num_tests); // 테스트 실행

    return 0;
}

void run_tests(const char *tests[], int num_tests){ 
    for (int i = 0; i < num_tests; i++) {
    yy_scan_string(input); // 입력 문자열을 Lex에 전달
    int result = yyparse(); // Bison을 호출하여 파싱 수행
    TEST_ASSERT_EQUAL(1, result); // 예상 결과와 비교
    }
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s); // 오류 메시지 출력
}
