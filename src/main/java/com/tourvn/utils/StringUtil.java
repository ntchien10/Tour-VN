package com.tourvn.utils;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Scanner;

import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StringUtil {

	private static Logger logger = LoggerFactory.getLogger(StringUtil.class);

	@SuppressWarnings("resource")
	public static String getBodyRequest(HttpServletRequest request) {

		if ("POST".equalsIgnoreCase(request.getMethod())) {
			Scanner s = null;
			try {
				s = new Scanner(request.getInputStream(), "UTF-8").useDelimiter("\\A");
			} catch (IOException e) {
				logger.error("getBodyRequest() error", e);
			}
			return s.hasNext() ? s.next() : "";
		}
		return "";
	}

	public static String getFileNameExport(String fileName) {
		Calendar currentDate = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("ddMMyyyy");
		String dateNow = formatter.format(currentDate.getTime());
		String exportFileName = fileName + dateNow;
		return exportFileName;
	}

	/**
	 * generate captcha text
	 *
	 * @param captchaLength
	 * @return
	 */
	public static String generateCaptchaText(int captchaLength) {

		String saltChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		StringBuffer captchaStrBuffer = new StringBuffer();
		java.util.Random rnd = new java.util.Random();

		// build a random captchaLength chars salt
		while (captchaStrBuffer.length() < captchaLength) {
			int index = (int) (rnd.nextFloat() * saltChars.length());
			captchaStrBuffer.append(saltChars.substring(index, index + 1));
		}

		return captchaStrBuffer.toString();

	}
	
	public static String getMaQuocGiaMaMangLike(String maQuocGia, String maMang, String nganCach, String noiTiep) {

		if (maQuocGia != null && !maQuocGia.equals("")) {
			maQuocGia = maQuocGia.trim();
		}
		if (maMang != null && !maMang.equals("")) {
			maMang = maMang.trim();
			maMang = maMang.replace(nganCach, ";");
			maMang = maMang.replace(noiTiep, "-");
		}

		String calledNumber = null;
		if (maMang != null && !maMang.equals("")) {
			String[] maMangArray = maMang.split("\\;");

			for (int i = 0; i < maMangArray.length; i++) {

				String[] maMangArray1 = maMangArray[i].split("\\-");
				int start = Integer.parseInt(maMangArray1[0].trim());
				int end = Integer.parseInt(maMangArray1[maMangArray1.length - 1].trim());

				do {
					if (calledNumber == null) {
						calledNumber = maQuocGia + String.valueOf(start);
					} else {
						calledNumber = calledNumber + "," + maQuocGia + String.valueOf(start);
					}
					start++;
				} while (start <= end);
			}
		}
		//System.out.println("calledNumber :" + calledNumber);
		return calledNumber;
	}
	
	public static String getMaQuocGiaMaMangNotLike(String maQuocGia, String maNgoaiTru, String nganCach, String noiTiep) {

		if (maQuocGia != null && !maQuocGia.equals("")) {
			maQuocGia = maQuocGia.trim();
		}
		if (maNgoaiTru != null && !maNgoaiTru.equals("")) {
			maNgoaiTru = maNgoaiTru.trim();
			maNgoaiTru = maNgoaiTru.replace(nganCach, ";");
			maNgoaiTru = maNgoaiTru.replace(noiTiep, "-");
		}

		String calledNumberNot = null;
		if (maNgoaiTru != null && !maNgoaiTru.equals("")) {
			String[] maMangArray = maNgoaiTru.split("\\;");

			for (int i = 0; i < maMangArray.length; i++) {

				String[] maMangArray1 = maMangArray[i].split("\\-");
				int start = Integer.parseInt(maMangArray1[0].trim());
				int end = Integer.parseInt(maMangArray1[maMangArray1.length - 1].trim());

				do {
					if (calledNumberNot == null) {
						calledNumberNot = maQuocGia + String.valueOf(start);
					} else {
						calledNumberNot = calledNumberNot + "," + maQuocGia + String.valueOf(start);
					}
					start++;
				} while (start <= end);
			}
		}
		//System.out.println("calledNumberNot :" + calledNumberNot);
		return calledNumberNot;
	}
	public static String[] parseString(String value, char delim) {
		return StringUtil.parseString(value, String.valueOf(delim), true);
	}

	@SuppressWarnings("rawtypes")
	public static String[] parseString(String value, String sdelim, boolean trim) {
		if (value != null) {
			boolean skipNL = sdelim.equals("\r\n"); // special case

			/* parse */
			java.util.List<String> v1 = new Vector<String>();
			StringUtil.toList(new StringTokenizer(value, sdelim, true), v1);

			/* examine all tokens to make sure we include blank items */
			int dupDelim = 1; // assume we've started with a delimiter
			boolean consumeNextNL = false;
			java.util.List<String> v2 = new Vector<String>();
			for (Iterator i = v1.iterator(); i.hasNext();) {
				String s = (String) i.next();
				if ((s.length() == 1) && (sdelim.indexOf(s) >= 0)) {
					// found a delimiter
					if (skipNL) {
						char ch = s.charAt(0);
						if (consumeNextNL && (ch == '\n')) {
							consumeNextNL = false;
						} else {
							consumeNextNL = (ch == '\r');
							if (dupDelim > 0) {
								v2.add("");
							} // blank item
							dupDelim++;
						}
					} else {
						if (dupDelim > 0) {
							v2.add("");
						} // blank item
						dupDelim++;
					}
				} else {
					v2.add(trim ? s.trim() : s);
					dupDelim = 0;
					consumeNextNL = false;
				}
			}
			if (dupDelim > 0) {
				v2.add("");
			} // final blank item

			/* return parsed array */
			return v2.toArray(new String[v2.size()]);

		} else {
			/* nothing parsed */
			return new String[0];

		}
	}
	public static java.util.List<String> toList(StringTokenizer st, java.util.List<String> list) {
        java.util.List<String> v = (list != null)? list : new Vector<String>();
        if (st != null) { for (;st.hasMoreTokens();) { v.add(st.nextToken()); } }
        return v;
    }
}
