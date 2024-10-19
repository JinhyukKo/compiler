# LexCompiler
```bash
brew install flex
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
