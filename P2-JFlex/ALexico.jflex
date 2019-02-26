/*  Autor:  Raul Capellan Fernandez

Practica: Practica 2 JFlex

*/
//Area de codigo, importaciones y paquetes
 
import java.io.*;
%%
//Area de opciones y declaraciones
%class miPrimerLexer
%standalone
%line

Digito = [0-9]
Numero = {Digito} {Digito}*
 
%%

//Area de reglas y acciones

	//***********EJEMPLO*******************
	//[aeiou] {System.out.print(yytext().toUpperCase());}
	
	//1.***********PAR->IMPAR IMPAR->PAR*******************
	/*([0-9]+)?[1,3,5,7,9] {System.out.print("NUM_IMPAR");}
	([0-9]+)?[0,2,4,6,8] {System.out.print("NUM_PAR");}*/
	
	//2.***********VOCALES A NUMEROS*******************
	/*[a] {System.out.print(1);}
	[e] {System.out.print(2);}
	[i] {System.out.print(3);}
	[o] {System.out.print(4);}
	[u] {System.out.print(5);}
	[A] {System.out.print(3);}
	[E] {System.out.print(6);}
	[I]	{System.out.print(9);}
	[O] {System.out.print(12);}
	[U] {System.out.print(15);}*/
	
	//3.***********LETRAS A MAYUSCULAS NUM*FILA*******************
	/*[a-z] {System.out.print(yytext().toUpperCase());}
	[0-9] {System.out.print(Integer.parseInt(yytext()) * (yyline+1));}*/
	
	//4.***********Borra Comentarios y tabulaciones*******************
	/*[/][/] {System.out.print("");}
	([	]?[" "]?)+ {System.out.print(" ");}*/
	
	//5.***********NUMEROS A MESES*******************
	[1] {System.out.print("Enero");}
	[2] {System.out.print("Febrero");}
	[3] {System.out.print("Marzo");}
	[4] {System.out.print("Abril");}
	[5] {System.out.print("Mayo");}
	[6] {System.out.print("Junio");}
	[7] {System.out.print("Julio");}
	[8] {System.out.print("Agosto");}
	[9]	{System.out.print("Septiembre");}
	[1][0] {System.out.print("Octubre");}
	[1][1] {System.out.print("Noviembre");}
	[1][2] {System.out.print("Diciembre");}