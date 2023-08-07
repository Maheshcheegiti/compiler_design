/* Lex program to count the number of keywords */

%{
#include <stdio.h>
#include <string.h>
int keywordCount = 0;
%}

/* Rules Section */
%%
"int"|"float"|"char"|"double"|"switch"|"if"|"while"|"do"|"for"|"case"|"long"|"void"|"goto"|"else"|"static"|"const"|"return" { keywordCount++; }
. ; /* Ignore other characters */
%%

int yywrap(void){}

int main() {
    // The function that starts the analysis
    printf("Enter the Sentence : ");
    yylex();
    printf("Number of keywords: %d", keywordCount);
    return 0;
}

