package P1;

import java.util.Scanner;
import java.util.regex.Pattern;

public class ExpresionesRegulares {
	
	public static void main(String[] args) {
		//ExDNI();
		//ExNumeroReal();
		//ExEmail();
		ExDominio();
		
	}
	
	public static void ExDNI() {
		System.out.println("Introduce un dni");
		Scanner teclado = new Scanner(System.in);
		String dni = teclado.nextLine();
		
		String dniExpRegular8 = "\\d{8}[A-HJ-NP-TV-Z]";
		String dniExpRegular7 = "\\d{7}[A-HJ-NP-TV-Z]";
		
		
		if(Pattern.matches(dniExpRegular8, dni) == false){
			if(Pattern.matches(dniExpRegular7, dni) == false)
				System.out.println("La expresion no es correcta");
		}
		
		if(Pattern.matches(dniExpRegular8, dni)== true)
			System.out.println("La expresion es correcta");
		if(Pattern.matches(dniExpRegular7, dni) == true)
			System.out.println("La expresion es correcta");
		
		
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
			
	}
	
	public static void ExEmail() {
		System.out.println("Introduce un emai");
		Scanner teclado = new Scanner(System.in);
		String email = teclado.nextLine();
		
		String exEmail = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		
		if(Pattern.matches(exEmail, email))
			System.out.println("El email es correcto");
		else
			System.out.println("El email es incorrecto");
		
	}
	
	public void ExIdentificador() {
		
	}
}
