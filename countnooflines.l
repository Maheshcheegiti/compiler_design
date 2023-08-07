/* Lex program to count the number of lines */

%{
#include <stdio.h>
#include <string.h>
int i = 0;
int ch = 0;
%}

/* Rules Section */
%%
[\n] { i++; ch += yyleng; } /* Rule for counting number of lines */
. ; /* Ignore other characters */
%%

int yywrap(void){}

int main() {
    // The function that starts the analysis
    printf("Enter the Sentence (Ctrl+D to end input): ");
    yyin = stdin; // Set yyin to read from standard input
    yylex();
    printf("Number of lines : %d\n", i);
    return 0;
}

