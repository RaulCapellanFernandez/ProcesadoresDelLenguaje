/*  Autor:  Raul Capellan Fernandez

Practica: Practica 3 JFlex

*/
//Area de codigo, importaciones y paquetes
 
import java.io.*;
%%
//Area de opciones y declaraciones
%class miSegundoLexer
%standalone
%line
%column

%state JAVA
%state PHP
%state CADENA
%state CADENAS


BJava = [B][e][g][i][n][J][a][v][a]
EJava = [E][n][d][J][a][v][a]

BPHP = [B][e][g][i][n][P][H][P]
EPHP = [E][n][d][P][H][P]
System = [S][y][s][t][e][m]
Out = [o][u][t]
Print = [p][r][i][n][t]
Println = [p][r][i][n][t][l][n]

 
%%

//Area de reglas y acciones	

	//***********INICIO*******************
<YYINITIAL>	{BJava} {yybegin(JAVA);
					System.out.print("JAVA_INI");}
					
<YYINITIAL>	{BPHP} {yybegin(PHP);
				System.out.print("PHP_INI");}
				
	//***********CODIGO JAVA*******************
<JAVA>  " " {System.out.print("");}
<JAVA>  "	" {System.out.print("");}

<JAVA>  [e][l][s][e] {System.out.println("JAVA_INI_ELSE");}
<JAVA>  {System} {System.out.println("JAVA_ID(System)");}
<JAVA>  [.] {System.out.println("JAVA_PUNTO");}
<JAVA>  {Out} {System.out.println("JAVA_ID(out)");}
<JAVA>  {Print} {System.out.println("JAVA_ID(print)");}
<JAVA>  {Println} {System.out.println("JAVA_ID(println)");}
<JAVA>  [(] {System.out.println("JAVA_ABREPAR");}
<JAVA>  [{] {System.out.println("JAVA_INI_FUNCION");}
<JAVA>  [}] {System.out.println("JAVA_FIN_FUNCION");}
<JAVA>  [+] {System.out.println("JAVA_OPER_SUMA");}
<JAVA>  [-] {System.out.println("JAVA_OPER_RESTA");}

	//***********PARA CADENAS EN JAVA*******************
<JAVA>	[\"] {yybegin(CADENA);
			System.out.println("JAVA_CAD_INI");}
<CADENA> [a-zA-Z0-9\-\_] {System.out.print("");}	
<CADENA> [\"] {yybegin(JAVA);
				System.out.println("JAVA_CAD_FIN");}
<JAVA>  [0-9]+ {System.out.println("JAVA_NUM");}
<JAVA>  [<]?[>]?[=]?[!]?[=] {System.out.println("JAVA_COMPARADOR");}
<JAVA>  [<] {System.out.println("JAVA_COMPARADOR");}
<JAVA>  [>] {System.out.println("JAVA_COMPARADOR");}
<JAVA>  [=] {System.out.println("JAVA_ASIGN");}
						
<JAVA>  [)] {System.out.println("JAVA_CIERRAPAR");}
<JAVA>	[(a-zA-Z)+] {System.out.println("JAVA_ID("+yytext()+")");}
<JAVA>  [;] {System.out.println("JAVA_FIN_INS");}
<JAVA>  [i][f] {System.out.println("JAVA_INI_IF");}

<JAVA>  [ñ] {System.out.println("JAVA_ERR");}
<JAVA>  [ç] {System.out.println("JAVA_ERR");}
<JAVA>  [Ñ] {System.out.println("JAVA_ERR");}
<JAVA>  [Ç] {System.out.println("JAVA_ERR");}
<JAVA>  [$] {System.out.println("JAVA_ERR");}
<JAVA>  [0-9]+ {System.out.println("JAVA_ERR");}

<JAVA>	{EJava} {yybegin(YYINITIAL);
				System.out.print("JAVA_FIN");}	
				
	//***********CODIGO PHP*******************
<PHP>  " " {System.out.print("");}
<PHP>  "	" {System.out.print("");}
<PHP>  [e][l][s][e] {System.out.println("PHP_INI_ELSE");}
<PHP>  [e][l][s][e][i][f] {System.out.println("PHP_INI_ELSEIF");}
<PHP>	[\$][a-zA-Z]+([a-zA-Z0-9]+)? {System.out.println("JAVA_ID("+yytext()+")");}

<PHP>	[e][c][h][o] {System.out.println("PHP_ID(echo)");}

<PHP>	[\"] {yybegin(CADENAS);
			System.out.println("PHP_CAD_INI");}
<CADENAS> [a-zA-Z0-9\-\_] {System.out.print("");}	
<CADENAS> [\"] {yybegin(PHP);
				System.out.println("PHP_CAD_FIN");}
<PHP>  [<]?[>]?[=]?[!]?[=] {System.out.println("PHP_COMPARADOR");}
<PHP>  [<] {System.out.println("PHP_COMPARADOR");}
<PHP>  [>] {System.out.println("PHP_COMPARADOR");}
<PHP>  [=] {System.out.println("PHP_ASIGN");}
<PHP>  [;] {System.out.println("PHP_FIN_INS");}
<PHP>  [(] {System.out.println("PHP_ABREPAR");}
<PHP>  [)] {System.out.println("PHP_CIERRAPAR");}
<PHP>  [{] {System.out.println("PHP_INI_FUNCION");}
<PHP>  [}] {System.out.println("PHP_FIN_FUNCION");}
<PHP>  [i][f] {System.out.println("PHP_INI_IF");}

<PHP>  [ñ] {System.out.println("PHP_ERR");}
<PHP>  [ç] {System.out.println("PHP_ERR");}
<PHP>  [Ñ] {System.out.println("PHP_ERR");}
<PHP>  [Ç] {System.out.println("PHP_ERR");}
<PHP>  [0-9]+ {System.out.println("PHP_ERR");}


<PHP>	{EPHP} {yybegin(YYINITIAL);
				System.out.print("PHP_FIN");}	

