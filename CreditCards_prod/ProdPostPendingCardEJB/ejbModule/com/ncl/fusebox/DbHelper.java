package com.ncl.fusebox;
import java.io.ByteArrayInputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;

import oracle.jdbc.OracleTypes;

public class DbHelper {
	/** Uses JNDI and Datasource (preferred style).   */	
	public static Connection getDbConnection(){
		String DATASOURCE_CONTEXT = "java:comp/env/jdbc/seaware_jndi";

		Connection connection = null;
		try {
			Context initialContext = new InitialContext();
			if ( initialContext == null){
				log("JNDI problem. Cannot get InitialContext.");
			}
			DataSource datasource = (DataSource)initialContext.lookup(DATASOURCE_CONTEXT);
			if (datasource != null) {
				connection = datasource.getConnection();
			}
			else {
				log("Failed to lookup datasource.");
			}
		}
		catch ( NamingException ex ) {
			log("Cannot get connection: " + ex);
		}
		catch(SQLException ex){
			log("Cannot get connection: " + ex);
		}
		return connection;
	}
	public static void log(String msg){
		System.out.println(msg);
	}

	public static List<NclCreditCardInfo> readPendingCreditCard(){
		CallableStatement callableStatement = null;
		Connection dbConnection = null;	
		ResultSet rs = null;
		List <NclCreditCardInfo> ccList = new ArrayList<NclCreditCardInfo>(); 

		try{
			dbConnection = getDbConnection();

			//getDBUSERCursor is a stored procedure
			String getPendingCreditCardSql = "{call NCL_ESB_CC_GET_DATA(?)}";
			callableStatement = dbConnection.prepareCall(getPendingCreditCardSql);
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);

			callableStatement.executeUpdate();

			// get cursor and cast it to ResultSet
			rs = (ResultSet) callableStatement.getObject(1);
			// loop it like normal
			while (rs.next()) {
				NclCreditCardInfo info = new NclCreditCardInfo();
				info.setCurrencyCd(rs.getString("CURRENCY_CD"));
				info.setCredCrdNbr(rs.getString("CRED_CRD_NBR"));
				info.setTransAmt(rs.getString("TRANS_AMT"));
				info.setCcExpDat(rs.getString("CC_EXP_DAT"));
				info.setUniqueValId(rs.getString("UNIQUE_VAL_ID"));
				info.setTransId(rs.getString("TRANS_ID"));
				info.setArrivalDat(rs.getString("ARRIVAL_DAT"));
				info.setDepartureDat(rs.getString("DEPARTURE_DAT"));
				info.setShipNam(rs.getString("SHIP_NAM"));
				info.setDestEntityId(rs.getString("DEST_ENTITY_ID"));
				info.setCcTransId(rs.getString("CC_TRANS_ID"));
				info.setManAuthCodeTxt(rs.getString("MAN_AUTH_CODE_TXT"));
				info.setTransTypeTxt(rs.getString("TRANS_TYPE_TXT"));
				info.setSrcEntityId(rs.getString("SRC_ENTITY_ID"));
				info.setResGrpId(rs.getString("RES_GRP_ID"));
				info.setShipCd(rs.getString("SHIP_CD"));
				info.setInputResId(rs.getString("INPUT_RES_ID"));
				info.setInputGroupId(rs.getString("INPUT_GROUP_ID"));
				info.setOfficeCodeTxt(rs.getString("OFFICE_CODE_TXT"));
				info.setSrcEntityTxt(rs.getString("SRC_ENTITY_TXT"));
				info.setDestEntityTxt(rs.getString("DEST_ENTITY_TXT"));
				info.setCcTypeTxt(rs.getString("CC_TYPE_TXT"));
				info.setTerminalId(rs.getString("TERMINAL_ID"));
				info.setSrcEntityTxt(rs.getString("SOURCE_TXT"));
				ccList.add(info);
			}	
		}catch(Exception e){
			e.printStackTrace();

		}finally{
			try{
				if( rs != null) {
					rs.close();
				}
				if (callableStatement != null  ){
					callableStatement.close();
				}
				if ( dbConnection != null){
					dbConnection.close();
				}
			}catch( Exception sqlEx){
				sqlEx.printStackTrace();
			}
		}
		return ccList;
	}

}