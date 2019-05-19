/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.marayaglobal.dao;

import static com.marayaglobal.dao.CustomerDBHelper.NAME;
import static com.marayaglobal.dao.CustomerDBHelper.connection;
import com.marayaglobal.beans.user.Address;
import com.marayaglobal.beans.user.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class AddressDBHelper {

	public static String TABLE_NAME = "address";
	public static String ID = "id";
	public static String USER_ID = "userID";
	public static String STREET_NAME = "streetName";
	public static String AREA_NAME = "areaName";
	public static String DISTRICT = "district";
	public static String POST_CODE = "postCode";

	static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
	private static Connection connection = null;
	private static PreparedStatement statement = null;
	private static ResultSet rs = null;

	public static Address getByUserId(int id) {
		connection = dbConnector.getConnection();
		Address address = new Address();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " where " + USER_ID + " =?");
			statement.setInt(1, id);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, address);
			}
		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (rs != null) {
					rs.close();
				}

			} catch (SQLException ex) {
				Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return address;
	}

	private static void inputer(ResultSet rs, Address address) throws SQLException {
		address.setId(rs.getInt(DatabaseConnector.ID));
		address.setUserID(rs.getInt(USER_ID));
		address.setStreetName(rs.getString(STREET_NAME));
		address.setAreaName(rs.getString(AREA_NAME));
		address.setDistrict(rs.getString(DISTRICT));
		address.setPostCode(rs.getString(POST_CODE));
	}
}
