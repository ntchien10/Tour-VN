// ----------------------------------------------------------------------------
// Copyright 2015, VHCSoft JSC.
// All rights reserved
// ----------------------------------------------------------------------------
// Change History:
//  2015.09.21  DatNH
//     - Initial release
// ----------------------------------------------------------------------------
package com.tourvn.utils;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
public class DbUtil {
	
	private static final Logger logger = LoggerFactory.getLogger(DbUtil.class);
	
	public static DataSource dataSource = null;
	
	static {
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			dataSource = (DataSource)envContext.lookup("jdbc/OracleDS");
			
			logger.info("Init Datasource success.");
		} catch (NamingException e) {
			logger.error("Cannot init Datasource", e);
		}
	}
	
	public static Connection getConnection() throws SQLException {
		
		return dataSource.getConnection();
	}
	
	// chay so sanh CDR doi tac & MBF
	public static void jobCompareCdr(String sessionId, String delta){ 
    	Connection conn = null;
    	CallableStatement cs = null;
         try {
             conn = getConnection();
             cs = conn.prepareCall(
                     "{call PK_SUMMARY_MO.JOB_COMPARE_CDR_MBF_PN(?,?) }"
                 );
              
            cs.setString(1, sessionId);
            cs.setString(2, delta);
            
         	cs.executeQuery();
            cs.close(); 
             
         } catch (SQLException e) {
            System.out.println ("Error run jobCompareCdr :" + e.getMessage());
         } finally {
             if (conn != null) {
                 try {
                     conn.close();
                 } catch (SQLException sqlEx) {
                     logger.warn("Cannot close the connection to database",sqlEx);
                 }
             }
         }    
	}
}
