# LexCompiler
```bash
brew install flex
```

## isExpression ? 

```bash
$ flex tokenizer.l
$ bison -d syntax.y
$ gcc -o isExpression syntax.tab.c
$ ./isExpression
```
>[!tip]
> this app determines if the input string is an expression or not 


![1*xmlS7NS4jrEHfe8W8CZWog](https://github.com/user-attachments/assets/156f6086-9ebe-4c52-936e-af4f4bc74c1d)

<img width="182" alt="Screenshot 2024-10-26 at 8 51 55 PM" src="https://github.com/user-attachments/assets/eadd4c77-c642-4bc1-a33f-1c09818aad7a">
<img width="201" alt="Screenshot 2024-10-26 at 8 52 56 PM" src="https://github.com/user-attachments/assets/d8e4d7da-dd19-4830-9164-cdd61393c2c8">
<img width="161" alt="Screenshot 2024-10-26 at 8 54 15 PM" src="https://github.com/user-attachments/assets/fc475d2f-1ee5-4f08-9409-44720ef32558">


this is the CFG of the file 
```ebnf
S : E ';'
E : E '+' T | E '-' T |  T ;
T : T'*' F | T '/' F | F ;
F : '(' E ')' | TIDEN | TNUM ;
```

## intDetector 


```bash
$ flex intDetector.l
$ gcc -o intDetector lex.yy.c
$ ./intDetector
```

determine if the input strings are integers or not


![Screenshot 2024-10-19 at 6 45 24 PM](https://github.com/user-attachments/assets/721546da-8d72-4844-8cbb-6a73a179e43a)


## Tokenizer

```bash
$ flex expression.l
$ gcc -o expression lex.yy.c
$ ./expression < data.txt
```

$$f(L)=t$$

L: langauge 
t : tokens
Get string as an input and find tokens in expressions

![Screenshot 2024-10-19 at 6 50 24 PM](https://github.com/user-attachments/assets/5983f157-b4ce-4ecc-9192-250dc6ee8f6d)

>[!tip]
> in LEX, you cannot determine Balanced Parentheses as you do in CFG
$$L={(^n)^n}$$


