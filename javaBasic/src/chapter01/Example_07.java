package chapter01;

public class Example_07 {

	public static void main(String[] args) {
		// 제어문 (반복문) while
		boolean flag = true;
		int number = 0;
		
		while (flag) {
			System.out.println("Loop" + number++);
			if(number == 10) {
				flag = false;
			}
		}
		
		// 제어문 (반복) do - while
		
		do {
			System.out.println("Do While Loop");
		}while(flag);
		
		// continue, break
		
		number = 0;
		while(true) {
			if(number % 3 == 0) {
				number++;
				System.out.println("Continue");
				continue;
			}if(number > 10) {
				System.out.println("Break");
				break;
			}
			System.out.println(number++);
		}
		System.out.println("Out Of Loop");
	}

}
