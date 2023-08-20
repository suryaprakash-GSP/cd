%option noyywrap
%{
	#include<stdio.h>
	#include "binary.tab.h"
%}

%%
[01] {yylval = atoi(yytext); return Digit;}
[\n] {return 0;}
%%
