/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.marayaglobal.dao;

import com.marayaglobal.beans.user.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tirtho
 */
public class CustomerDBHelper {

	public static String TABLE_NAME = "customer";
	public static String NAME = "name";
	public static String EMAIL = "email";
	public static String PHONE_NUMBER = "phoneNumber";
	public static String PASSWORD = "password";
	public static String IS_ACTIVE = "isActive";
	public static String GENDER = "gender";
	public static String SESSION = "session";
	public static String ACC_CREATE_TIME = "creating_time";
	public static String LAST_ACCESS = "last_access";
	public static String COMMA = ", ";

	static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
	static Connection connection = null;
	static PreparedStatement statement = null;
	static ResultSet rs = null;

	public static void main(String[] args) {
		System.out.println(getBySession("9DD45D90782117D97688C07E54B1BED3").getName());
		;

	}

	/**
	 *
	 * @param customer
	 * @return
	 *         <ul>
	 *         <li>0 for failed</li>
	 *         <li>1 for success</li>
	 *         <li>2 for Already registered</li>
	 *         </ul>
	 */
	public static int create(Customer customer) {
		int status = isUserExist(customer.getEmail());

		if (status > 0) {

			return status;
		}

		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("INSERT INTO " + TABLE_NAME + "(" + NAME + COMMA + PHONE_NUMBER + COMMA
					+ EMAIL + COMMA + PASSWORD + ") values(?,?,?,?)");
			statement.setString(1, customer.getName());
			statement.setString(2, customer.getPhoneNumber());
			statement.setString(3, customer.getEmail());
			statement.setString(4, customer.getPassword());
			status = statement.executeUpdate();

		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		}
		return status;
	}

	public static List<Customer> getall() {
		List<Customer> customers = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME);
			rs = statement.executeQuery();
			while (rs.next()) {
				Customer customer = new Customer();
				inputer(rs, customer);
				customers.add(customer);
			}
		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}

		return customers;
	}

	public static Customer getBySession(String sessionId) {
		connection = dbConnector.getConnection();
		Customer customer = new Customer();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " where " + SESSION + " =?");
			statement.setString(1, sessionId);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, customer);
			}
		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}

		return customer;
	}

	public static Customer getById(int id) {
		connection = dbConnector.getConnection();
		Customer customer = new Customer();
		try {
			statement = connection
					.prepareCall("SELECT * FROM " + TABLE_NAME + " where " + DatabaseConnector.ID + " =?");
			statement.setInt(1, id);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, customer);
			}
		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}

		return customer;
	}

	public static Customer getByEmail(String email) {
		connection = dbConnector.getConnection();
		Customer customer = new Customer();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " where " + EMAIL + " =?");
			statement.setString(1, email);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, customer);
			}
		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return customer;
	}

	public static Customer getByNumber(String phoneNumber) {
		connection = dbConnector.getConnection();
		Customer customer = new Customer();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " where " + PHONE_NUMBER + " =?");
			statement.setString(1, phoneNumber);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, customer);
			}
		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return customer;
	}

	private static int isUserExist(String email) {
		int status = 0;
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("select " + EMAIL + " from " + TABLE_NAME + " where " + EMAIL + "=?");
			statement.setString(1, email);
			rs = statement.executeQuery();
			System.out.println("chacker \t called");
			if (rs.next()) {
				status = 2;

			}
		} catch (SQLException ex) {
			Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
		}

		return status;
	}

	public static Customer login(String email, String password, String session) {
		int status = 0;
		connection = dbConnector.getConnection();
		Customer customer = new Customer();
		try {
			String command = "select * from " + TABLE_NAME + " where " + EMAIL + "=? and " + PASSWORD + "=? and "
					+ IS_ACTIVE + "=?";
			statement = connection.prepareStatement(command);

			statement.setString(1, email);
			statement.setString(2, password);
			statement.setBoolean(3, true);
			rs = statement.executeQuery();

			if (rs.next()) {
				statement = connection
						.prepareCall("UPDATE " + TABLE_NAME + " SET " + SESSION + " = ? WHERE id = " + rs.getInt("id"));
				statement.setString(1, session);
				statement.executeUpdate();
				inputer(rs, customer);
				return customer;
			}

		} catch (SQLException ex) {
		} finally {
			try {
				connection.close();
				statement.close();
				rs.close();
			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
		}
		return customer;
	}

	private static void inputer(ResultSet rs, Customer customer) throws SQLException {
		customer.setId(rs.getInt(DatabaseConnector.ID));
		customer.setName(rs.getString(NAME));
		customer.setEmail(rs.getString(EMAIL));
		customer.setPhoneNumber(rs.getString(PHONE_NUMBER));
		customer.setIsActive(rs.getBoolean(IS_ACTIVE));
		customer.setSession(rs.getString(SESSION));
		customer.setLastAccessTime(rs.getTimestamp(LAST_ACCESS));
	}
}
