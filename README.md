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
>[!]
> determine if the input strings are integers or not
![Screenshot 2024-10-19 at 6 45 24 PM](https://github.com/user-attachments/assets/721546da-8d72-4844-8cbb-6a73a179e43a)


## Tokenizer

```bash
$ flex expression.l
$ gcc -o expression lex.yy.c
$ ./expression < data.txt
```
>[!tip]
> $f(L)=t$
> L: langauge
> t : tokens
> Get string as an input and find tokens in mathematical expressions

