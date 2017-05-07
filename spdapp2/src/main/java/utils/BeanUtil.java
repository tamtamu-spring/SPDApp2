package utils;

import java.sql.Date;
import java.util.Locale;

public class BeanUtil {
	
	private static final char MINUS = '-';
	private static final String EMPTY = "";
	private static final String EXCEPT_DIGITS_AND_DOT = "[^0-9.]";
	private static final char DOT = '.';
	private static final char COMMA = ',';

	public static Date requestedDateFormatter(String requestedDate) {
		if (requestedDate.equals(EMPTY))  {
			return null;
		}
		return Date.valueOf(requestedDate);
	}
	
	public static Double convertStringToDouble(String parameter) {
		if (parameter.equals(EMPTY)) {
			return null;
		}
		parameter = parameter.replace(COMMA, DOT).replaceAll(EXCEPT_DIGITS_AND_DOT, EMPTY);
		if (BeanUtil.isStringNumeric(parameter)) {
			return Double.valueOf(parameter);
		}
		return null;
	}
	
	public static boolean isStringNumeric(String str) {
		char localeMinusSign = MINUS;
		boolean isMinus = str.charAt(0) == localeMinusSign; 
		if ((isMinus && str.length() < 2) || ((!isMinus) && !Character.isDigit(str.charAt(0)))) {
			return false; 
		}
		boolean isDecimalSeparatorFound = false;
		char localeDecimalSeparator = DOT;
		for (char c : str.substring(1).toCharArray()) {
			if (!Character.isDigit(c)) {
				if (c == localeDecimalSeparator && !isDecimalSeparatorFound) {
					isDecimalSeparatorFound = true;
					continue;
				}
				return false;
			}
		}
		return true;
	}

}
