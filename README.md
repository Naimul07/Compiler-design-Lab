
# Compiler design lab

Here some problems are solved with lex and yacc

        1. Environment setup and run “Hello World” program
        2. Implement the lexical analyzer Flex or Lex to match a string of a given pattern
        3. A Lex program to identify an integer number
        4. A Lex program to identify a Teletalk number
        5. A Lex program to identify a floating point number
        6. A Lex program to recognize and count the number of identifier in a given input
        7. A Lex program to count the characters, words, spaces, and lines in a given input
        8. A Lex program to identify exponential numbers
        9. A Lex program to identify “to be” verb
        10. A Lex program to identify a complex number
        11. Implement Yacc program to evaluate an expression (Simple and scientific calculator)
        12. Implement Yacc program to recognize a valid variable, which starts with a letter,
        followed by any number of letters or digits
        13. Implement Yacc program to recognize a valid arithmetic expression that uses
        operators +, -, * and /
        14. Implement Yacc program to recognize strings ‘aaab’, ‘abbb’, ‘ab’ and ‘a’ using the
        grammar (anbn, n>0)



## For running program type this

For Lex file

```bash
    flex <fileName>
    gcc lex.yy.c
    a.exe
```
for lex and yacc file
```bash
    flex <fileName>
    bison -dy <fileName>
    gcc lex.yy.c y.tab.c
    a.exe
```