import java_cup.runtime.*;
%%
%unicode
%class Lexer
%cup
%line
%column
%%
"+" { return new Symbol(sym.MAS); }
"-" { return new Symbol(sym.MENOS); }
"*" { return new Symbol(sym.POR); }
"/" { return new Symbol(sym.ENTRE); }
"%" { return new Symbol(sym.MODULO); }
";" { return new Symbol(sym.PTOYCOMA); }
"(" { return new Symbol(sym.ABREPAR); }
")" { return new Symbol(sym.CIERRAPAR); }
[:digit:]+ { return new Symbol(sym.NUM, new Integer(yytext())); }
[ \t\r\n]+ {;}
. { System.out.println("Error en léxico."+yytext()+"-"); }