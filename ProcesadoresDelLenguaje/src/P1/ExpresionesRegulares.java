package P1;

import java.util.Scanner;
import java.util.regex.Pattern;

public class ExpresionesRegulares {
	
	public static void main(String[] args) {
		ExDNI();
		ExNumeroReal();
		ExDominio();
		ExEmail();
		ExIdentificador();
		
	}
	
	public static void ExDNI() {
		System.out.println("Introduce un dni");
		Scanner teclado = new Scanner(System.in);
		String dni = teclado.nextLine();
		
		String dniExpRegular = "\\d{1,8}[A-HJ-NP-TV-Z]";
		String nieExpRegular7 = "[X,Y,Z]\\d{7}[A-HJ-NP-TV-Z]";
		
		
		if(Pattern.matches(dniExpRegular, dni) == false){
				if(Pattern.matches(nieExpRegular7, dni) == false)
					System.out.println("El DNI o NIE no es correcto");
		}
		if(Pattern.matches(dniExpRegular, dni))
			System.out.println("El DNI es correcto");
		if(Pattern.matches(nieExpRegular7, dni))
			System.out.println("El NIE es correcto");
		
		System.out.println("-----------------------------------");
		
	}
	
	public static void ExNumeroReal() {
		System.out.println("Introduce un numero real");
		Scanner teclado = new Scanner(System.in);
		String nReal = teclado.nextLine();
		
		String exNReal = "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?";
		
		if(Pattern.matches(exNReal, nReal))
			System.out.println("El numero real es correcto");
		else
			System.out.println("El numero real no es correcto");
		
		System.out.println("-----------------------------------");
	}
	
	public static void ExDominio() {
		System.out.println("Introduce un dominio");
		Scanner teclado = new Scanner(System.in);
		String email = teclado.nextLine();
		
		String exDominio = "\\w*\\.?\\w+\\.\\w{2,}"; 
		
		if(Pattern.matches(exDominio, email))
			System.out.println("El dominio es correcto");
		else 
			System.out.println("El dominio es incorrecto");
			
		System.out.println("-----------------------------------");
	}
	
	public static void ExEmail() {
		System.out.println("Introduce un email");
		Scanner teclado = new Scanner(System.in);
		String email = teclado.nextLine();
		
		String exEmail = "\\w*\\.?\\w*?\\@\\w*\\.?\\w*\\.\\w*";
		
		if(Pattern.matches(exEmail, email))
			System.out.println("El email es correcto");
		else
			System.out.println("El email es incorrecto");
		
		System.out.println("-----------------------------------");
	}
	
	public static void ExIdentificador() {
		System.out.println("Introduce un identificador");
		Scanner teclado = new Scanner(System.in);
		String identificador = teclado.nextLine();
		
		String exIdentificador = "[\\_a-zA-Z]([\\_a-zA-Z0-9]+)?";
		
		if(Pattern.matches(exIdentificador, identificador))
			System.out.println("El identificador es correcto");
		else
			System.out.println("El identificador es incorrecto");
		
		System.out.println("-----------------------------------");
	}
}
