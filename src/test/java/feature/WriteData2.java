package feature;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class WriteData2 {
	public static void writeData(String arg) throws FileNotFoundException, UnsupportedEncodingException {
		PrintWriter writer = new PrintWriter("UserDetails.txt","UTF-8"); 
		writer.println(arg);
		writer.close();
	}
}
