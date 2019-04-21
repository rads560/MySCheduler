import java.util.ArrayList;

public class Color {
	public static String get_color(String s) {
		String [] parse = s.split("\\|");
		ArrayList<String> check =  JDBCDriver.checkTime(parse[0], Integer.parseInt(parse[1]), true);
		
		if(check.isEmpty())
		{
			return "blue";
		}
		else 
		{
			return "green";
		}

	}
}
