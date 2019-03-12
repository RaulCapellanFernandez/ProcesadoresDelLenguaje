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


BJava = [B][e][g][u][i][n][J][a][v][a]
EJava = [E][n][d][J][a][v][a]
 
%%

//Area de reglas y acciones	
	//***********INICIO CODIGO JAVA*******************
<YYINITIAL>	{BJava} {yybegin(JAVA);
					System.out.print("JAVA_INI");}

<JAVA>	{EJava} {System.out.print("JAVA_FIN");}	
	//***********FINAL CODIGO JAVA*******************	