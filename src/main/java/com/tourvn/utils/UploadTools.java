package com.tourvn.utils;

import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook; 

public class UploadTools { 
	private static DateFormat df_full = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	
	@SuppressWarnings({ "rawtypes", "unchecked", "resource" })
	public static List readXlsFile(InputStream filePath) throws IOException {

        List sheetData = new ArrayList();
        
        HSSFWorkbook wb_hssf; //Declare HSSF WorkBook
        HSSFSheet sheet = null; // sheet can be used as common for XSSF and HSSF WorkBook
	    wb_hssf = new HSSFWorkbook(filePath);
	    sheet = wb_hssf.getSheetAt(0);
	    Iterator rows = sheet.rowIterator(); // Now we have rows ready from the sheet
	    
	    while (rows.hasNext()) {

	    	HSSFRow row = (HSSFRow) rows.next();
	    	Iterator cells = row.cellIterator();
	    	List data = new ArrayList();
	    	while (cells.hasNext()) {
	    		HSSFCell cell =  (HSSFCell) cells.next();  
	    		String cellValue=""; 
	    		switch (cell.getCellType()) {

	    		case HSSFCell.CELL_TYPE_STRING:
	    			cellValue = cell.getRichStringCellValue().getString();
	    			data.add(cellValue);
	    		    break;
	    		case HSSFCell.CELL_TYPE_NUMERIC:
	    				if(HSSFDateUtil.isCellDateFormatted(cell)){
	    					Date valueDate = cell.getDateCellValue();
	    					String value = df_full.format(valueDate); 
	    					data.add(value);
	    				}else{
	    					long value= (long) cell.getNumericCellValue();
	    					data.add(value);
	    				} 
	    		    break;
	    		case XSSFCell.CELL_TYPE_BOOLEAN:
    				data.add(cell.getBooleanCellValue()); 
    				break;
    			case XSSFCell.CELL_TYPE_FORMULA:
    				data.add(cell.getCellFormula()); 
    				break;
    			default: 
    				data.add(cell);
    				break;
	    		} 
	    	} 
	    	sheetData.add(data);
	    }
	    
	    filePath.close();
	    
	    return sheetData;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked", "resource" })
	public static List readXlsxFile(InputStream inputStream) throws IOException {
		List sheetData = new ArrayList();
		
		XSSFWorkbook wb_xssf; //Declare XSSF WorkBook
		XSSFSheet sheet = null;
	    wb_xssf = new XSSFWorkbook(inputStream);
        sheet = wb_xssf.getSheetAt(0);
        XSSFRow row; 
		XSSFCell cell;
		
        Iterator rows = sheet.rowIterator(); 
        
        while (rows.hasNext()) {
        	row = (XSSFRow) rows.next(); 
        	
        	Iterator cells = row.cellIterator();
        	
        	List data = new ArrayList();
        	while (cells.hasNext()) {
        		cell=(XSSFCell) cells.next();
                         
        		switch (cell.getCellType()) {
        			case XSSFCell.CELL_TYPE_STRING:
        				data.add(cell.getRichStringCellValue().getString()); 
        				break;
        			case XSSFCell.CELL_TYPE_NUMERIC:
        				if(DateUtil.isCellDateFormatted(cell)) {
        					String value = df_full.format(cell.getDateCellValue()); 
        					data.add(value); 
        				} else {
        					long value= (long) cell.getNumericCellValue();
	    					data.add(value); 
        				}
        				break;
        			case XSSFCell.CELL_TYPE_BOOLEAN:
        				data.add(cell.getBooleanCellValue()); 
        				break;
        			case XSSFCell.CELL_TYPE_FORMULA:
        				data.add(cell.getCellFormula()); 
        				break;
        			default: 
        				data.add(cell);
        				break;
        		}
        	}
        	sheetData.add(data);
        }
        inputStream.close();
        return sheetData;
	}
}