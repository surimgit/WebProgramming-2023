package chapter01;

public class Example_06 {

	public static void main(String[] args) {
		// 제어문 (반복문) for
	
		for(int i = 0; i < 10; i++) {
			System.out.println(i);
		}
		System.out.println("---------------");
		
		int[] numbers = new int[5];
		for(int i = 0; i < numbers.length; i++) {
			numbers[i] = i + 1;
//			System.out.println(numbers[i]);
		}
		
		for(int x = 0; x < numbers.length; x++) {
			System.out.println(numbers[x]);
		}
		
		System.out.println("---------------");

		for(int i : numbers) {
			System.out.println(i);
		}
		
		
		
		
		
		
		
	}

}
