package cheat_sheet_feature;

public class StringUtil {
	public static String getNumberFromString(String text) {
        return text.replaceAll("\\D+", "");
    }
}
