package chapter05;

class SuperClass{
	void superMethod() {
		System.out.println("조상 메소드");
	}
}

class SubClass extends SuperClass{
	
	@Override
	void superMethod() {
		System.out.println("자손 메소드");
	}
}



public class Example_02 {

	// 열거형
	enum EXAMPLE_ENUM {FIRST(0), SECOND(1), THIRD(2);

	EXAMPLE_ENUM(int i) {};
	}
	static final int FIRST = 1;
	static final int SECOND = 1;
	static final int THIRD = 1;
	
	public static void main(String[] args) {
		System.out.println(EXAMPLE_ENUM.FIRST.ordinal());
	}

}
