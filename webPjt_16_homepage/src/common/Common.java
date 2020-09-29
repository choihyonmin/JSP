package common;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Common {
	public String getToday() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		Date date = new Date();
		String today = sdf.format(date);
		return today;
	}
}
