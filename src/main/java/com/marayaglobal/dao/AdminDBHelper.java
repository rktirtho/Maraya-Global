package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.marayaglobal.beans.user.Customer;

public class AdminDBHelper {
	public static String TABLE_NAME = "admin_table";
	public static String NAME = "name";
	public static String EMAIL = "email";
	public static String PHONE_NUMBER = "phoneNumber";
	public static String PASSWORD = "password";
	public static String SESSION = "current_session";
	public static String IS_ACTIVE = "isActive";
	public static String ACC_CREATE_TIME = "creating_time";
	public static String COMMA = ", ";

	static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
	static Connection connection = null;
	static PreparedStatement statement = null;
	static ResultSet rs = null;

	public static void main(String[] args) {
System.out.println(login("ipsum.leo@MaurisnullaInteger.edu", "067731455", "hdfhjsadfhsdhfsdjhfsdhfjsnfakjr0887dkjfsdf"));

	}
	
	public static String adminName(String sessinId) {
		String name = null;
		connection = dbConnector.getConnection();
		
		try {
			String command = "select name from " + TABLE_NAME + " where " + SESSION + "=? ";
			statement = connection.prepareStatement(command);

			statement.setString(1, sessinId);
//			statement.setBoolean(3, true);
			rs = statement.executeQuery();

			if (rs.next()) {
				name = rs.getString(1);
				
			}

		} catch (SQLException ex) {
			System.out.println(ex.getMessage());

		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
		}
		return name;
	}
	

	public static boolean login(String email, String password, String session) {
		boolean status = false;
		connection = dbConnector.getConnection();
		
		try {
			String command = "select id from " + TABLE_NAME + " where " + EMAIL + "=? and " + PASSWORD + "=? ";
			statement = connection.prepareStatement(command);

			statement.setString(1, email);
			statement.setString(2, password);
//			statement.setBoolean(3, true);
			rs = statement.executeQuery();

			if (rs.next()) {
				status = true;
				statement = connection.prepareCall("UPDATE "+ TABLE_NAME+ " SET "
				+ SESSION +" = ? WHERE id = "+rs.getInt("id"));
				statement.setString(1, session);
				status = statement.executeUpdate()==1;
			}

		} catch (SQLException ex) {
			System.out.println(ex.getMessage());

		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
		}
		return status;
	}

	private static void inputer(ResultSet rs, Customer customer) throws SQLException {
		customer.setId(rs.getInt(DatabaseConnector.ID));
		customer.setName(rs.getString(NAME));
		customer.setEmail(rs.getString(EMAIL));
		customer.setPhoneNumber(rs.getString(PHONE_NUMBER));
		customer.setIsActive(rs.getBoolean(IS_ACTIVE));
	}

}
