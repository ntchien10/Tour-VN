package com.tourvn.utils;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.jsp.JspException;

import org.apache.commons.lang.ObjectUtils;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.util.CellRangeAddress;
import org.displaytag.Messages;
import org.displaytag.exception.BaseNestableJspTagException;
import org.displaytag.exception.SeverityEnum;
import org.displaytag.export.BinaryExportView;
import org.displaytag.model.Column;
import org.displaytag.model.ColumnIterator;
import org.displaytag.model.HeaderCell;
import org.displaytag.model.Row;
import org.displaytag.model.RowIterator;
import org.displaytag.model.TableModel;

/**
 * Excel exporter using POI HSSF.
 * 
 * @author Fabrizio Giustina
 * @author rapruitt
 * @version $Revision: 1143 $ ($Author: fgiust $)
 */
public class ExportToExcel implements BinaryExportView {

	/**
	 * TableModel to render.
	 */
	private TableModel model;

	/**
	 * export full list?
	 */
	private boolean exportFull;

	/**
	 * include header in export?
	 */
	private boolean header;

	/**
	 * decorate export?
	 */
	private boolean decorated;

	/**
	 * @see org.displaytag.export.ExportView#setParameters(TableModel, boolean,
	 *      boolean, boolean)
	 */
	public void setParameters(TableModel tableModel, boolean exportFullList,
			boolean includeHeader, boolean decorateValues) {
		this.model = tableModel;
		this.exportFull = exportFullList;
		this.header = includeHeader;
		this.decorated = decorateValues;
	}

	/**
	 * @return "application/vnd.ms-excel"
	 * @see org.displaytag.export.BaseExportView#getMimeType()
	 */
	public String getMimeType() {
		return "application/vnd.ms-excel"; //$NON-NLS-1$
	}

	/**
	 * @see org.displaytag.export.BinaryExportView#doExport(OutputStream)
	 */
	public void doExport(OutputStream out) throws JspException {
		
		HSSFWorkbook wb = null;
		HSSFSheet sheet;
		
		try {
			wb = new HSSFWorkbook();
			sheet = wb.createSheet("-");

			HSSFCellStyle headerStyle = wb.createCellStyle();
			// headerStyle.setFillPattern(HSSFCellStyle.FINE_DOTS);
			/* headerStyle.setFillBackgroundColor(HSSFColor.BLUE_GREY.index); */
			// headerStyle.setFillBackgroundColor(HSSFColor.SKY_BLUE.index);
			headerStyle.setFillForegroundColor(HSSFColor.GREEN.index);
			headerStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
			headerStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
			headerStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
			headerStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
			headerStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
			headerStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);

			HSSFFont bold = wb.createFont();
			bold.setFontName("Times New Roman");
			bold.setFontHeightInPoints((short) 11);
			bold.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
			bold.setColor(HSSFColor.WHITE.index);
			headerStyle.setFont(bold);

			// Border hang du lieu
			HSSFCellStyle cellFormat = wb.createCellStyle();
			cellFormat.setBorderBottom(HSSFCellStyle.BORDER_THIN);
			cellFormat.setBorderTop(HSSFCellStyle.BORDER_THIN);
			cellFormat.setBorderRight(HSSFCellStyle.BORDER_THIN);
			cellFormat.setBorderLeft(HSSFCellStyle.BORDER_THIN);

			int rowNum = 0;
			int colNum = 0;
			String caption = this.model.getCaption();
			if (caption != null && !caption.equals("")) {
				HSSFCellStyle style1 = wb.createCellStyle();
				style1.setAlignment(HSSFCellStyle.ALIGN_CENTER);
				style1.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
				HSSFFont bold1 = wb.createFont();
				bold1.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
				bold1.setFontHeightInPoints((short) 14);
				style1.setFont(bold1);

				HSSFCellStyle styleheader = wb.createCellStyle();
				HSSFFont bold2 = wb.createFont();
				// bold2.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
				bold2.setFontHeightInPoints((short) 11);
				styleheader.setFont(bold2);
				styleheader.setAlignment(HSSFCellStyle.ALIGN_LEFT);

				String[] ctionList = caption.split(",");
				String title = "";
				if (ctionList.length > 0) {
					title = ctionList[0];

				}
				HSSFRow xlsRow1 = sheet.createRow(rowNum++);
				xlsRow1.setHeightInPoints(30);
				HSSFCell cell1 = xlsRow1.createCell(0);
				cell1.setCellStyle(style1);
				writeCell(title, cell1);
				sheet.addMergedRegion(new CellRangeAddress(xlsRow1.getRowNum(),
						cell1.getColumnIndex(), xlsRow1.getRowNum(), (model
								.getNumberOfColumns() - 1)));

				if (ctionList.length > 1) {

					for (int i = 1; i < ctionList.length; i++) {
						String[] etc = ctionList[i].split(";");

						HSSFRow xlsRow2 = sheet.createRow(rowNum++);
						if (etc.length > 0) {
							HSSFCell cell2 = xlsRow2.createCell(1);
							cell2.setCellStyle(styleheader);
							writeCell(etc[0], cell2);
							// sheet.addMergedRegion(new
							// CellRangeAddress(xlsRow2.getRowNum(),cell2.getColumnIndex(),
							// xlsRow2.getRowNum(), (model.getNumberOfColumns()
							// - 1)));

						}
						if (etc.length > 1) {
							HSSFCell cell2 = xlsRow2.createCell(2);
							cell2.setCellStyle(styleheader);
							writeCell(etc[1], cell2);
							// sheet.addMergedRegion(new
							// CellRangeAddress(xlsRow2.getRowNum(),cell2.getColumnIndex(),
							// xlsRow2.getRowNum(), (model.getNumberOfColumns()
							// - 1)));

						}

					}
				}
				rowNum++;
			}
			if (this.header) {
				// Create an header row
				HSSFRow xlsRow = sheet.createRow(rowNum++);

				@SuppressWarnings("rawtypes")
				Iterator iterator = this.model.getHeaderCellList().iterator();

				while (iterator.hasNext()) {
					HeaderCell headerCell = (HeaderCell) iterator.next();

					String columnHeader = headerCell.getTitle();

					if (columnHeader == null) {
						columnHeader = StringUtils.capitalize(headerCell
								.getBeanPropertyName());
					}

					HSSFCell cell = xlsRow.createCell(colNum++);
					cell.setCellValue(columnHeader);
					cell.setCellStyle(headerStyle);

				}
			}

			// get the correct iterator (full or partial list according to the
			// exportFull field)
			RowIterator rowIterator = this.model
					.getRowIterator(this.exportFull);

			if (this.header == false && rowIterator.hasNext()) {

				Row row = rowIterator.next();
				HSSFRow xlsRow = sheet.createRow(rowNum++);
				colNum = 0;

				// iterator on columns
				ColumnIterator columnIterator = row
						.getColumnIterator(this.model.getHeaderCellList());

				while (columnIterator.hasNext()) {
					Column column = columnIterator.nextColumn();

					// Get the value to be displayed for the column
					Object value = column.getValue(this.decorated);

					HSSFCell cell = xlsRow.createCell(colNum++);
					cell.setCellStyle(headerStyle);

					writeCell(value, cell);
				}

			}
			// iterator on rows
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();
				HSSFRow xlsRow = sheet.createRow(rowNum++);
				colNum = 0;

				// iterator on columns
				ColumnIterator columnIterator = row
						.getColumnIterator(this.model.getHeaderCellList());

				while (columnIterator.hasNext()) {
					Column column = columnIterator.nextColumn();

					// Get the value to be displayed for the column
					Object value = column.getValue(this.decorated);

					HSSFCell cell = xlsRow.createCell(colNum++);
					cell.setCellStyle(cellFormat);

					writeCell(value, cell);
				}
			}

			// adjust the column widths
			int colCount = 0;
			while (colCount <= colNum) {
				sheet.autoSizeColumn((short) colCount++);
			}

			wb.write(out);
		} catch (Exception e) {
			throw new ExcelGenerationException(e);
		} finally {
			try {
				wb.close();
			} catch (IOException e) {
			}
		}
	}

	/**
	 * Write the value to the cell. Override this method if you have complex
	 * data types that may need to be exported.
	 * 
	 * @param value
	 *            the value of the cell
	 * @param cell
	 *            the cell to write it to
	 */
	protected void writeCell(Object value, HSSFCell cell) {
		if (value instanceof Number) {
			Number num = (Number) value;
			cell.setCellValue(num.doubleValue());
		} else if (value instanceof Date) {
			cell.setCellValue((Date) value);
		} else if (value instanceof Calendar) {
			cell.setCellValue((Calendar) value);
		} else {
			cell.setCellValue(escapeColumnValue(value));
		}
	}

	// patch from Karsten Voges
	/**
	 * Escape certain values that are not permitted in excel cells.
	 * 
	 * @param rawValue
	 *            the object value
	 * @return the escaped value
	 */
	protected String escapeColumnValue(Object rawValue) {
		if (rawValue == null) {
			return null;
		}
		String returnString = ObjectUtils.toString(rawValue);
		// escape the String to get the tabs, returns, newline explicit as \t \r
		// \n
		returnString = StringEscapeUtils.escapeJava(StringUtils
				.trimToEmpty(returnString));
		// remove tabs, insert four whitespaces instead
		returnString = StringUtils.replace(StringUtils.trim(returnString),
				"\\t", "    ");
		// remove the return, only newline valid in excel
		returnString = StringUtils.replace(StringUtils.trim(returnString),
				"\\r", " ");
		// unescape so that \n gets back to newline
		returnString = StringEscapeUtils.unescapeJava(returnString);
		return returnString;
	}

	/**
	 * Wraps IText-generated exceptions.
	 * 
	 * @author Fabrizio Giustina
	 * @version $Revision: 1143 $ ($Author: fgiust $)
	 */
	static class ExcelGenerationException extends BaseNestableJspTagException {

		/**
		 * D1597A17A6.
		 */
		private static final long serialVersionUID = 899149338534L;

		/**
		 * Instantiate a new PdfGenerationException with a fixed message and the
		 * given cause.
		 * 
		 * @param cause
		 *            Previous exception
		 */
		public ExcelGenerationException(Throwable cause) {
			super(ExportToExcel.class, Messages
					.getString("ExcelView.errorexporting"), cause); //$NON-NLS-1$
		}

		/**
		 * @see org.displaytag.exception.BaseNestableJspTagException#getSeverity()
		 */
		public SeverityEnum getSeverity() {
			return SeverityEnum.ERROR;
		}
	}

}