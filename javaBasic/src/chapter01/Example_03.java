package chapter01;

public class Example_03 {

	public static void main(String[] args) {
		// 산술연산자
		// 더하기 (+)
		System.out.println(8 + 3);
		// 빼기 (-)
		System.out.println(8 - 3);
		// 곱하기 (*)
		System.out.println(8 * 3);
		// 나누기 (/)
		System.out.println(8.0 / 3);
		// 나머지 (%)
		System.out.println(8 % 3);
		// 증가 (++)
		int plus1 = 0;
		System.out.println(plus1++);
		System.out.println(plus1);
		int plus2 = 0;
		System.out.println(++plus2);
		System.out.println(plus2);
		// 감소(--)
		int minus1 = 0;
		System.out.println(minus1--);
		System.out.println(minus1);
		
		// 대입연산자
		// =
		int number = 8;
		number += 3;
		System.out.println(number);
		number -= 3;
		System.out.println(number);
		number *= 3;
		System.out.println(number);
		number /= 3;
		System.out.println(number);
		number %= 3;
		System.out.println(number);
		
		// 비교연산자
		// 같다 (==)
		System.out.println(8 == 3);
		// 다르다
		System.out.println(8 != 3);
		// 크다
		System.out.println(8 > 3);
		// 작다
		System.out.println(8 < 3);
		// 크거나 같다
		System.out.println(8 >= 3);
		// 작거나 같다
		System.out.println(8 <= 3);
		
		System.out.println("---------------");
		
		// 논리연산자
		// and
		System.out.println(true && true);   	
		// or
		System.out.println(true || false);
		// and or 연산의 규칙
		// and: 연산 과정 중 false가 존재하면 무조건 false
		// or: 연산 과정 중 or이 존재하면 무조건 or
		// 해당 논리 뒤 연산은 실행하지 않음
		int a = 0;
		int b = 0;
		System.out.println(false && a++ > 0);
		System.out.println(a);
		// not
		System.out.println(!true);

	
	}

}
