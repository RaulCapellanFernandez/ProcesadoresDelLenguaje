import java.util.*;
public class Simbolo {
	String nombre;
	Stack tipo;
	
	public Simbolo(String nombre, Stack tipo)
	{
		this.nombre=nombre;
		this.tipo=tipo;
	}
	
	public static String tipotoString(Stack s)
	{ String cadena="";
	for (int cont=s.size()-1;cont>=0;cont--)
	{
		switch(((Character)s.elementAt(cont)).charValue()) {
		case('i'): { cadena+="un entero"; break;}
		case('r'): { cadena+="un real"; break;}
		case('c'): { cadena+="un caracter"; break;}
		case('f'): { cadena+="una función que retorna ";break;}
		case('u'): { cadena+="indefinido"; break;}
		}
	}
	
	return cadena;	
	}
	

}
