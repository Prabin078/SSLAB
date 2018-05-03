%{
#include<stdio.h>
int stack=0, opd=0, opt=0, valid=1;
%}
%%
"(" {stack++;}
")" {stack--;}
[a-zA-Z][a-zA-Z]* { printf("%s is an operand\n",yytext);}
[+\-*/] { printf("%s is an operator\n",yytext);}
[0-9]+ { printf("%s is an constant",yytext);}
%%

int main(){
    yylex();
    if(stack==0){
        printf("Valid\n");
    }
    else{
        printf("Invalid\n");
    }
}
int yywrap()
{
    return 1;
}
