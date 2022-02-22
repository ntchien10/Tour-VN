package com.tourvn.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.io.File;

import org.apache.log4j.Logger;

/**
 * @author Phoenix
 */
public class FileTools {

    private static Logger logger = Logger.getLogger(FileTools.class.getName());

    public static List<String> getFilename(String f) {

        List<String> rl = new ArrayList<String>();

        try {
            File folder = new File(f);
            File[] listOfFiles = folder.listFiles();

            for (int i = 0; i < listOfFiles.length; i++) {
                if (listOfFiles[i].isFile()) {
                    //	System.out.println("File " + listOfFiles[i].getName());
                    rl.add(listOfFiles[i].getName());
                }
            }
        } catch(Exception ex) {
            logger.warn("FileTools: Thu muc file dinh kem khong ton tai");
        }

        return rl;
    }

    public static String getFileName(String fileName) {
        try {
            int pos = fileName.lastIndexOf(".");

            return fileName.substring(0, pos);
        } catch (Exception ex) {
            DateFormat df = new SimpleDateFormat("YYYYMMddHHmm");

            return df.format(new Date());
        }
    }

    public static String getExtendOfFile(String fileName) {

        try {
            int pos = fileName.lastIndexOf(".");
            if (pos == -1)
                return null;
            return fileName.substring(pos);
        } catch (Exception ex) {
            return null;
        }
    }

    public static void mkDir(String dir) {
        File f = new File(dir);
        try{
            if(f.exists() == false){
                boolean success = f.mkdirs();
                if (success) {
                    System.out.println("Directories: " + dir + "created");
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static void main(String arg[]) {
        getFilename("/u01");
    }

    public static boolean isExistsFile(String filePath) {
        File f = new File(filePath);
        return f.exists();
    }
	public static String getSubFolderByDate(Date date, String pattern) {
		DateFormat df = new SimpleDateFormat(pattern);

		return df.format(date);
	}

}
