/*
* Hecho por Santiago Pelaez Pelaez
*			Raúl Capellán Fernández
*
*/

//Area de codigo, importaciones y paquetes

import java.io.*;
%%
//Area de opciones y declaraciones
%class Lexer
%line
%column


Digito = [0-9]
Numero = {Digito} {Digito}*
Finlinea = \n|\r|\r\n
Blanco = {Finlinea}|[ \t\f]

%%
//Area de reglas y acciones

";" {System.out.println("LEX:PTOCOMA"); return new Yytoken(1,yytext(),"PTOCOMA",yyline,yycolumn);}
"(" {System.out.println("LEX:ABREPAR"); return new Yytoken(1,yytext(),"ABREPAR",yyline,yycolumn);}
")" {System.out.println("LEX:CIERRAPAR"); return new Yytoken(1,yytext(),"CIERRAPAR",yyline,yycolumn);}
{Numero} {System.out.println("LEX:NUM:"+yytext());return new Yytoken(1,yytext(),"NUM",yyline,yycolumn);}
[\+] {System.out.println("LEX:OP:SUMA:"+yytext());return new Yytoken(1,yytext(),"OP",yyline,yycolumn);}
[\-] {System.out.println("LEX:OP:RESTA:"+yytext());return new Yytoken(1,yytext(),"OP",yyline,yycolumn);}
[\*] {System.out.println("LEX:OP:MULTI:"+yytext());return new Yytoken(1,yytext(),"OP",yyline,yycolumn);}
[\/] {System.out.println("LEX:OP:DIVI:"+yytext());return new Yytoken(1,yytext(),"OP",yyline,yycolumn);}
{Blanco} {}
. {System.out.println("LEX:Error: encontrado "+yytext()+" en linea "+(yyline+1)+" columna "+(yycolumn+1));}




 

