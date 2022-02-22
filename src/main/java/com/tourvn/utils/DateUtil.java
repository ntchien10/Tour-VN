// ----------------------------------------------------------------------------
// Copyright 2015, VHCSoft JSC.
// All rights reserved
// ----------------------------------------------------------------------------
// Change History:
//  2015.09.21  DatNH
//     - Initial release
// ----------------------------------------------------------------------------
package com.tourvn.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * <p>
 * Title: QLNT
 * </p>
 * <p>
 * Copyright: Copyright (c) by VHCSoft JSC 2015
 * </p>
 * <p>
 * Company: VietNam High Technology & Software Join Stock Company
 * </p>
 * 
 * @author VHCSoft JSC
 * @version 1.0
 */
public class DateUtil {
	private static DateFormat df = new SimpleDateFormat(Constants.DATE_FORMAT);
	private final static SimpleDateFormat dff = new SimpleDateFormat("dd/MM/yyyy");

	public static String format(Date input, String format) {
		if (input == null)
			return Constants.EMPTY;
		return (new SimpleDateFormat(format)).format(input);
	}

	public static String checkDate(String date) {

		if (date == null || !isValid(date))
			return df.format(addDate(new Date(), -1));
		return date;
	}

	public static Date addDate(Date date, int days) {

		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, days);

		return cal.getTime();
	}

	public static boolean isValid(String date) {
		try {
			df.parse(date);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	public static boolean isValid(String pattern, String date) {
		DateFormat df = new SimpleDateFormat(pattern);

		try {
			df.parse(date);
			return true;
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return false;
		}

	}

	public static Date parseDate(String date) {
		try {
			return df.parse(date);
		} catch (Exception ex) {
			return null;
		}

	}

	public static Date getFirstMonth(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, -1);
		cal.set(Calendar.DAY_OF_MONTH, 1);

		return cal.getTime();
	}

	public static Date getYesterday(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, -1);

		return cal.getTime();
	}

	public static Date startMonth(Date currentDate) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(currentDate);
		cal.set(Calendar.DAY_OF_MONTH, 1);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);

		return cal.getTime();
	}

	public static Date endMonth(Date currentDate) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(currentDate);

		cal.add(Calendar.MONTH, 1);
		cal.set(Calendar.DAY_OF_MONTH, 1);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.add(Calendar.DATE, -1);

		return cal.getTime();
	}

	public static Date startWeek(Date currentDate) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(currentDate);
		cal.add(Calendar.DAY_OF_MONTH, -7);
		return cal.getTime();
	}

	public static Date startDate(Date currentDate) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(currentDate);

		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);

		return cal.getTime();
	}

	public static Integer dateStringToInteger(String dateString, String s) {

		int postC = dateString.indexOf(s);

		int hour = Integer.parseInt(dateString.substring(0, postC));
		int minu = Integer.parseInt(dateString.substring(postC + 1));

		return hour * 60 + minu;
	}

	public static int getDiffDate(Date start, Date end) {

		long diff = end.getTime() - start.getTime();
		return (int) (diff / (1000 * 60 * 60 * 24));
	}

	public static int getDiffMonth(Date startDate, Date endDate) {
		Calendar startCalendar = Calendar.getInstance();
		startCalendar.setTime(startDate);
		Calendar endCalendar = Calendar.getInstance();
		endCalendar.setTime(endDate);

		int diffYear = endCalendar.get(Calendar.YEAR) - startCalendar.get(Calendar.YEAR);
		int diffMonth = diffYear * 12 + endCalendar.get(Calendar.MONTH) - startCalendar.get(Calendar.MONTH);

		return diffMonth;
	}

	public static int daysInMonth(Date currentDate) {
		if (currentDate == null) {
			return 0;
		}
		Calendar startCalendar = Calendar.getInstance();
		startCalendar.setTime(currentDate);

		int daysInMonth = startCalendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		return daysInMonth;
	}

	public static Date dateByGMT(Date currentDate, int gmt) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(currentDate);
		cal.add(Calendar.HOUR, -gmt);
		cal.add(Calendar.HOUR, +7);

		return cal.getTime();
	}

	public static void main(String[] args) {
		System.out.println(df.format(getFirstMonth(new Date())));
		System.out.println(df.format(getYesterday(new Date())));
	}

//	public static List<String> getAllDates(String fromDate, String toDate) {
//		Date fDate = DateUtil.parseDate(fromDate);
//		Date tDate = DateUtil.parseDate(toDate);
//		
//		Calendar c = Calendar.getInstance();
//		c.setTime(fDate);
//		long diff = (tDate.getTime() - fDate.getTime());
//		int durationDays = (int) (TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
//
//		List<String> dates = new LinkedList<>();
//		for (int i = 0; i <= durationDays; i++) {
//			dates.add(dff.format(c.getTime()));
//			c.add(Calendar.DATE, 1);
//		}
//		return dates;
//	}

}
