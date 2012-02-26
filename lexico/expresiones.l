%{
#include <stdlib.h>
//#include "y.tab.h"

%}

id		[a-zA-Z]([a-zA-Z0-9]|[_])*
ctei		[0-9]+
ctef		[0-9]+"."[0-9]+
ctes		\" [.+|\n]* \"

%%

"adelante" {return ADELANTE;}
"atras" {return ATRAS;}
"rotaderecha" {return ROTADERECHA;}
"rotaizquierda" {return ROTAIZQUIERDA;}
"tomartesoro" {return TOMARTESORO;}
"topa" {return TOPA;}
"verpista" {return VERPISTA;}
"si" {return SI;}
"sino" {return SINO;}
"mientras" {return MIENTRAS;}
"funcion" {return FUNCION;}
"entero" {return ENTERO;}
"flotante" {return FLOTANTE;}
"selecciona" {return SELECCIONA;}
"cuando" {return CUANDO;}
"regresa" {return REGRESA;}
"logico" {return LOGICO;}
"palabra" {return PALABRA;}
"escribe" {return ESCRIBE;}
"lee" {return LEE;}
"principal" {return PRINCIPAL;}
"vacio" {return VACIO;}
"verdadero" {return VERDADERO;}
"falso" {return FALSO;}
"y" {return Y;}
"o" {return O;}
"no" {return NO;}
"programa" {return PROGRAMA;}
"caracter" {return CARACTER;}

{ctei} {return CTE;}
{ctef} {return CTF;}
{ctes} {return CTESTRING;}
[A-Za-z] {return car;}
{id} {return ID;}


"," {return COMA;}
";" {return PUNTOCOMA;}
":" {return IGUALP;}
"{" {return ALLAVE;}
"}" {return CLLAVE;}
"=" {return IGUALR;}
">" {return MAYORQUE;}
"<" {return MENORQUE;}
"<>" {return DIFERENTE;}
"(" {return APARENTESIS;}
")" {return CPARENTESIS;}
"+" {return MAS;}
"-" {return MENOS;}
"*" {return POR;}
"/" {return ENTRE;}
"." {return CONCA;}

"//" .* | "**" [.+|\n]* "**" ;

%%
