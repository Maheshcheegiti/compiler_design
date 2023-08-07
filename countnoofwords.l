/* Lex program to count the number of words */

%{
#include <stdio.h>
#include <string.h>
int wordCount = 0;
%}

/* Rules Section */
%%
[a-zA-Z0-9]+ { wordCount++; } /* Rule for counting number of words */
"\n"        { printf("No of words: %d\n", wordCount); wordCount = 0; }
.           ; /* Ignore other characters */
%%

int yywrap(void) {}

int main() {
    // The function that starts the analysis
    printf("Enter the Sentence (Ctrl+D to end input): ");
    yylex();
    return 0;
}

