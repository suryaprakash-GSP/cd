%option noyywrap
%{
	#include<stdio.h>
        #include "calci.tab.h"
%}

%%
[0-9]+ {yylval = atoi(yytext); return Num;}
[-+*/%()] {return yytext[0];}
\n {return 0;}
%%
