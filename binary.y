%{
	#include<stdio.h>
	int yylex();
	int yyerror(char *s);
%}

%token Digit

%%
A : L {printf("Decimal Number : %d", $1);}
L : L B {$$ = 2*$1+$2;}
L : B {$$ = $1;}
B : Digit {$$ = $1;}
%%
int main()
{
        printf("Enter binary number : ");
        yyparse();
	return 0;
}
int yyerror(char *s)
{
     printf("%s", s);
}