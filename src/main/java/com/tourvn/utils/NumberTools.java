package com.tourvn.utils;

import java.text.DecimalFormat;
import java.util.Random;

public class NumberTools {
	
	private static final int MAX_LENGTH = 12;
	
	public static String formatExponentNumber(String number) {
		return formatExponentNumber(Double.parseDouble(number));
	}
	
	public static String formatExponentNumber(double number) {
		int digitsAvailable = MAX_LENGTH - 2;
	    if (Math.abs(number) < Math.pow(10, digitsAvailable)
	            && Math.abs(number) > Math.pow(10, -digitsAvailable)) {
	        String format = "0.";
	        double temp = number;
	        for (int i = 0; i < digitsAvailable; i++) {
	            if ((temp /= 10) < 1) {
	                format += "#";
	            }
	        }
	        return new DecimalFormat(format).format(number);
	    }
	    
	    String format = "0.";
	    
	    for (int i = 0; i < digitsAvailable; i++) {
	            format += "#";
	    }
	    String r = new DecimalFormat(format + "E0").format(number);
	    int lastLength = r.length() + 1;
	    while (r.length() > MAX_LENGTH && lastLength > r.length()) {
	        lastLength = r.length();
	        r = r.replaceAll("\\.?[0-9]E", "E");
	    }
	    return r;
	}
	
	public static void main(String arg[]) {
		System.out.println(generateRandomChars());
	}

	public static String NumerFormatDate(long tgian) {
		String times = "";
		if (tgian>0)
		{
			long tmp = tgian;		// Giay
			
			long hour = tmp/3600;
			tmp -= hour*3600;
			
			long minus = tmp/60;
			tmp -= minus*60;
			
			
			
			if (hour < 10) {
				times += "0";
			}
			
			times += hour + ":";
			
			if (minus < 10) {
				times += "0";
			}
			times += minus + ":";
			
			if (tmp < 10) {
				times += "0";
			}
			times += tmp;
		}
		else
		{
			times= "";
		}
		
		return times;
	}
	public static String DateToMiute(long tgian) {
		String times = "";
		if (tgian>0)
		{
			long tmp = tgian/60;		// phut
			times +=tmp;	
		}
		else
		{
			times= "0";
		}
		
		return times;
	}
	
	public static String generateRandomChars() {
	    StringBuilder sb = new StringBuilder();
	    Random random = new Random();
	    String candidateChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	    int length = 15;
	    
	    for (int i = 0; i < length; i++) {
	        sb.append(candidateChars.charAt(random.nextInt(candidateChars.length())));
	    }

	    return sb.toString();
	}
}
