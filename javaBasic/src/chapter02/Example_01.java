package chapter02;

// 클래스: 객체를 생성하는 설계도 / 기준
class SmartPhone{  
	
	// 멤버 변수
	String nation;
	String os;
	String owner;
	String telNumber;
	
	// 메소드
	void tel(String toTelNumber) {
		// 전화번호가 빈 값이면 '전화번호를 입력하세요.'
		// 빈 값이 아니라면 'toTelNumber에 전화중입니다.'
		if(toTelNumber.isEmpty()) {
			System.out.println("전화번호를 입력하세요.");
			return;
		}
		System.out.println(toTelNumber + "에 전화중입니다.");
	}
		
	void sendMessage(String toTelNumber, String message) {
		System.out.println(toTelNumber + "에 " + message + "를 보냅니다.");
	}
}

public class Example_01 {

	public static void main(String[] args) {
		// 인스턴스 선언, 생성
		
		SmartPhone myPhone;
		myPhone = new SmartPhone();
		SmartPhone yourPhone = new SmartPhone();
		
		System.out.println(myPhone);
		System.out.println(yourPhone);
		
		
		// 인스턴스에 속성 (멤버 변수)에 접근
		myPhone.nation = "Korea";
		myPhone.os = "andriod";
		myPhone.owner = "최수림";
		myPhone.telNumber = "010-9023-0261";
		
		System.out.println(myPhone.nation);
		System.out.println(myPhone.os);
		System.out.println(myPhone.owner);
		System.out.println(myPhone.telNumber);
		
		// 인스턴스에 메소드를 호출
		myPhone.tel("010-1234-1234");
		
		SmartPhone hisPhone = new SmartPhone();
		hisPhone = yourPhone;
		
		yourPhone.nation = "US";
		
		System.out.println(hisPhone.nation);
		
		yourPhone.nation = "UK";
		
		System.out.println(hisPhone.nation);
		
		
	}
}
