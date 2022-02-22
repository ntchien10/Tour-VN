package com.tourvn.utils;


import org.apache.log4j.Logger;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.*;
import java.util.Properties;

/**
 * Created by m on 7/22/17.
 */
public class Global {
    private static Logger logger = Logger.getLogger(Global.class.getName());
    public static final Properties SYSTEM_CONFIG = new Properties();
    public static final Properties MAIL_CONFIG = new Properties();
    public static final Properties MAIL_SYSTEM_CONFIG = new Properties();
    public static final Properties SHIFT_CONFIG = new Properties();
    public static final Properties UPLOAD_CONFIG = new Properties();


    public static final String SEPARATOR = "/";

    public static Connection getConnection() {

        System.out.println("-------- Oracle JDBC Connection Testing ------");

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            System.out.println("Oracle JDBC Driver Registered!");

        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }

        try {
            //return DriverManager.getConnection("jdbc:oracle:thin:@vhc.com.vn:1521:vhc", "VMSC6_ALARM", "ALARM");
            return DriverManager.getConnection("jdbc:oracle:thin:@14.160.91.174:1521:vhc", "vtqt", "vtqt123");

        } catch (SQLException e) {
            System.out.println(e.getMessage());

            return null;
        }

    }

    public static void main(String[] args) {
        getConnection();
    }
    public static void closeResultSet(ResultSet rs){
        if (rs != null) {
            try
            {
                rs.close();
            }
            catch (SQLException ex)
            {
            }
        }
    }
    public static void closeConnection(Connection con){
        if (con != null) {
            try
            {
                con.close();
            }
            catch (SQLException ex)
            {
            }
        }
    }
    public static void closeCallableStatement(CallableStatement cs){
        if (cs != null) {
            try
            {
                cs.close();
            }
            catch (SQLException ex)
            {
            }
        }
    }
	public static String getLocalSvrIP() throws UnknownHostException {
		String thisIP = "";
		try {
			InetAddress addr = InetAddress.getLocalHost();
			thisIP = addr.getHostAddress().toString();
		} catch (UnknownHostException e) {
		}
		return thisIP;
	}
}
