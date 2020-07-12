package feature;

public class JavaFunctions {
	
	public String nonStaticFunction(String arg) {
		System.out.println("Inside Non-Static Function.....");
		return "*** Hello ***"+arg;
	}
	
	public static String staticFunction(String arg) {
		System.out.println("Inside Static Function.....");
		return "*** Hello ***"+arg;
	}
}
