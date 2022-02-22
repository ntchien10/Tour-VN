package com.tourvn.utils;

import org.springframework.util.StringUtils;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;

/**
 * Created by m on 5/27/17.
 */
public class NumberUtil {
    private static NumberFormat intFormat = new DecimalFormat("#,###,###");
    private static NumberFormat floatFormat = new DecimalFormat("#,###,###,###,##0.##");
    public static Object formatNum(Object num){

        if (num instanceof BigDecimal) {
            BigDecimal numBigDecimal = (BigDecimal) num;
            double numDouble = numBigDecimal.doubleValue();
            return floatFormat.format(numDouble);
        } else
        if (num instanceof Double) {
            Double numDouble = (Double) num;
            return floatFormat.format(numDouble);
        } else
        if (num instanceof Float) {
            Float numFloat = (Float) num;
            double numDouble = (double) numFloat;
            return floatFormat.format(numDouble);
        } else if (num instanceof Integer) {
            Integer intNum = (Integer) num;
            return intFormat.format(intNum);
        } else if (num instanceof Long) {
            Long intNum = (Long) num;
            return intFormat.format(intNum);
        }
        return num;
    }
    public static int parseInt(String i){
        if(StringUtils.isEmpty(i))
            return 0;
        try {
            return Integer.parseInt(i);
        }catch (Exception x){
            return 0;
        }
    }
    public static double parseDouble(String i){
    	if(i.contains(",")) i = i.replace(",", "");
        if(StringUtils.isEmpty(i))
            return 0;
        try {
            return Double.parseDouble(i.trim());
        }catch (Exception x){
            return 0;
        }
    }
    public static float round(float number, int scale) {
        int pow = 10;
        for (int i = 1; i < scale; i++)
            pow *= 10;
        float tmp = number * pow;
        return (float) (int) ((tmp - (int) tmp) >= 0.5f ? tmp + 1 : tmp) / pow;
    }
    
    public static void main(String[] args) {
    	long l = 12324;
    	System.out.println(formatNum(l));
	}
}
