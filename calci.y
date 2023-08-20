%{
	#include<stdio.h>
	int yylex();
	int yyerror(char *s);
%}

%token '+' '-' '*' '/' '%' '(' ')' Num

%left '+' '-'
%left '*' '/' '%'

%%
A : E {printf("Total : %d", $$);}
E : '('E')' {$$ = $2;};
E : E '+' E {$$ = $1+$3;}
E : E '-' E {$$ = $1-$3;}
E : E '*' E {$$ = $1*$3;}
E : E '/' E {$$ = $1/$3;}
E : E '%' E {$$ = $1%$3;}
E : Num {$$ = $1;}
%%
int main()
{
        yyparse();
	return 0;
}
int yyerror(char *s)
{
    printf("%s", s);
}