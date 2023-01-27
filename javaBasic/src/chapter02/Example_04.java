package chapter02;

class Manufacturer {
	String name;
	String country;
	String webUrl;

	void print() {
		System.out.println("name: " + name + " / country: " + country + " / webUrl: " + webUrl);
	}

}

class Car {
	Manufacturer manufacturer;
	String exteriorColor;
	String interiorColor;
	String modelName;

	Manufacturer createManufacturer(String name, String country, String webUrl) {
		Manufacturer manufacturer = new Manufacturer();
		manufacturer.name = name;
		manufacturer.country = country;
		manufacturer.webUrl = webUrl;
		
		System.out.println(manufacturer);
		
		return manufacturer;
	}
}

public class Example_04 {

	public static void main(String[] args) {
		Car myCar = new Car();
		Manufacturer manufacturer = myCar.createManufacturer("Hyundai", "Korea", "Hyundai.com");
		System.out.println("----------------------");
		System.out.println(manufacturer);
		System.out.println(manufacturer.name);
		System.out.println("----------------------");
		manufacturer.print();
		
		
	}

}
