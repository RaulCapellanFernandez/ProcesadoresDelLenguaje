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
<JAVA>  {System} {System.out.println("JAVA_ID(System)");}
<JAVA>  [.] {System.out.println("JAVA_PUNTO");}
<JAVA>  {Out} {System.out.println("JAVA_ID(out)");}
<JAVA>  {Print} {System.out.println("JAVA_ID(print)");}
<JAVA>  {Println} {System.out.println("JAVA_ID(println)");}
<JAVA>  [(] {System.out.println("JAVA_ABREPAR");}
<JAVA>  [)] {System.out.println("JAVA_CIERRAPAR");}
<JAVA>  [;] {System.out.println("JAVA_FIN_INS");}

<JAVA>	{EJava} {yybegin(YYINITIAL);
				System.out.print("JAVA_FIN");}	
				
	//***********CODIGO PHP*******************
<PHP>	{EPHP} {yybegin(YYINITIAL);
				System.out.print("PHP_FIN");}	

