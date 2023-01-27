package chapter02;

import java.security.cert.TrustAnchor;

class Triangle {
	 
		double base;
		double height;
		double diagonal;

		void createAndPrint() {
			base = 3;
			height = 4;
			diagonal = 5;
			
			System.out.println("base: " + base);
			System.out.println("height: " + height);
			System.out.println("diagonal: " + diagonal);
		}
}


class Pythagoras{
	
	static String creator = "Pythagoras";
	
	// 밑변
//	double base;
	// 높이
//	double height;
	// 대각선
//	double diagonal;

	static double getDiagonal(double base, double height) {
		return Math.sqrt(Math.pow(base, 2) + Math.pow(height, 2));
	}

	static double getBase(double diagonal, double height) {
		return Math.sqrt(Math.pow(diagonal, 2) - Math.pow(height, 2));
	}

	static double getHeight(double diagonal, double base) {
		return Math.sqrt(Math.pow(diagonal, 2) + Math.pow(base, 2));
	}
	
}

public class Example_02 {

	public static void main(String[] args) {
		// 객체 배열
		SmartPhone[] phones = new SmartPhone[3];
		
		// 초기화 작업
		for (int i = 0; i < phones.length; i++) {
			System.out.println(phones[i]);
			phones[i] = new SmartPhone();
		}
		System.out.println("----------");
		System.out.println(phones);
		System.out.println("----------");

		for(SmartPhone phone : phones) {
			System.out.println(phone);
			phone.nation = "US";
			phone.os = "IOS";
			phone.owner = "surim";
			phone.telNumber = "010-1111-1111";
		}
		System.out.println("----------");
		for(SmartPhone phone : phones) {
			System.out.println(phone.nation);
			System.out.println(phone.os);
			System.out.println(phone.owner);
			System.out.println(phone.telNumber);
		}

		// p
		// 밑변
		int a = 10;
		// 높이
		int b = 20;
		// 대각선
		int c = 30;
		
		// Math.pow() : 거듭제곱
		// Math.sqrt() : 제곱근
		// 대각선의 길이
		double r1 = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
		// 밑변의 길이
		double r2 = Math.sqrt(Math.pow(c, 2) - Math.pow(b, 2));
		// 높이의 길이
		double r3 = Math.sqrt(Math.pow(c, 2) - Math.pow(a, 2));
	
		Pythagoras p = new Pythagoras();
//		p.base = 10;
//		p.height = 20;
//		p.diagonal = 30;
//		
//		double diagonal = p.getDiagonal();
		System.out.println(p.creator);
		p.creator = "Newton";
		System.out.println(p.creator);
		
	
		Pythagoras p2 = new Pythagoras();
		System.out.println(p2.creator);
		
		System.out.println(Pythagoras.creator);
	
		System.out.println(Pythagoras.getDiagonal(3,4));
		
		// 삼각형 인스턴스
		Triangle triangle1 = new Triangle();
		
		triangle1.base = 3;
		triangle1.height = 4;
		triangle1.diagonal= 5;
		
		System.out.println("base :" + triangle1.base);
		System.out.println("base :" + triangle1.height);
		System.out.println("base :" + triangle1.diagonal);
		
	 
	}
}
