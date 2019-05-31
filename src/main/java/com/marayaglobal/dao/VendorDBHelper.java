package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.omg.CORBA.TIMEOUT;

import com.marayaglobal.beans.user.Customer;
import com.marayaglobal.beans.user.Vendor;

public class VendorDBHelper {

	public static String TABLE_NAME = "vendor";
	public static String ID = "id";
	public static String NAME = "name";
	public static String EMAIL = "email";
	public static String PHONE_NUMBER = "phone_number";
	public static String PASSWORD = "password";
	public static String IS_ACTIVE = "is_Active";
	public static String IS_VERIFIED = "is_verified";
	public static String SESSION = "session";
	public static String LAST_ACCESS = "last_access_time";
	public static String ACC_CREATE_TIME = "acc_create_time";
	public static String COMMA = ", ";

	static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
	static Connection connection = null;
	static PreparedStatement statement = null;
	static ResultSet rs = null;

	public static void main(String[] args) {
//		List<Vendor> vendors = getAllVendorAccountRequest();
//		for (Vendor vendor : vendors) {
//			System.out.println(vendor.getName());
//		}
//		activeVendor(1);
System.out.println(login("massa.Suspendisse@etultrices.co.uk", "NPX78WJO3OL", "EK8BTJD5GO0O24FRTH"));
//    	Vendor vendor = new Vendor();
//    	vendor.setName("Korai Gosto");
//    	vendor.setEmail("test@gmail.com");
//    	vendor.setPhoneNumber("015263773");
//    	vendor.setPassword("test");
//    	System.out.println(create(vendor));
//    	

		// System.out.println(getById(1));
	}

	public static int create(Vendor vendor) {
		int status = 0;
		status = isVendorExixt(vendor.getEmail());
		if (status == 2) {
			return status;
		}
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("INSERT INTO " + TABLE_NAME + "(" + NAME + COMMA + EMAIL + COMMA
					+ PHONE_NUMBER + COMMA + PASSWORD + ") VALUES (?,?,?,?)");
			statement.setString(1, vendor.getName());
			statement.setString(2, vendor.getEmail());
			statement.setString(3, vendor.getPhoneNumber());
			statement.setString(4, vendor.getPassword());
			status = statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
		return status;
	}

	public static Vendor getById(int id) {
		Vendor vendor = new Vendor();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " WHERE " + ID + "=?");
			statement.setInt(1, id);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, vendor);
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
				ex.printStackTrace();
			}
		}

		return vendor;
	}

	public static Vendor getBySession(String sessionId) {
		Vendor vendor = new Vendor();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " WHERE " + SESSION + "=?");
			statement.setString(1, sessionId);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, vendor);
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
				ex.printStackTrace();
			}
		}

		return vendor;
	}

	public static List<Vendor> getVerifiedVendor() {
		List<Vendor> vendors = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " WHERE " + IS_VERIFIED + "=true");
			rs = statement.executeQuery();
			while (rs.next()) {
				Vendor vendor = new Vendor();
				inputer(rs, vendor);
				vendors.add(vendor);
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

		return vendors;
	}

	public static List<Vendor> getAllVendorAccountRequest() {
		List<Vendor> vendors = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " WHERE " + IS_VERIFIED + "=false");
			rs = statement.executeQuery();
			while (rs.next()) {
				Vendor vendor = new Vendor();
				inputer(rs, vendor);
				vendors.add(vendor);
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

		return vendors;
	}

	public static List<Vendor> getall() {
		List<Vendor> vendors = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME);
			rs = statement.executeQuery();
			while (rs.next()) {
				Vendor vendor = new Vendor();
				inputer(rs, vendor);
				vendors.add(vendor);
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

		return vendors;
	}

	public static int activeVendor(int id) {
		int status = 0;
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("UPDATE " + TABLE_NAME + " SET " + IS_ACTIVE + " = true WHERE id=" + id);
			status = statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
		return status;
	}

	public static int verifiVendor(int id) {
		int status = 0;
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("UPDATE " + TABLE_NAME + " SET is_verified = true WHERE id=" + id);
			status = statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				
			} catch (SQLException ex) {
				Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return status;
	}

	private static int isVendorExixt(String email) {
		int status = 0;
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("SELECT " + EMAIL + " FROM" + TABLE_NAME + " WHERE " + EMAIL + "=?");
			statement.setString(1, email);
			rs = statement.executeQuery();
			if (rs.next()) {
				status = 2;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
		return status;
	}

	public static boolean login(String email, String password, String session) {
		boolean status = false;
		connection = dbConnector.getConnection();

		try {
			String command = "select id from " + TABLE_NAME + " where " + EMAIL + "=? and " + PASSWORD + "=? and "
					+ IS_ACTIVE + " = true and " + IS_VERIFIED + " = true";
			statement = connection.prepareStatement(command);

			statement.setString(1, email);
			statement.setString(2, password);
			rs = statement.executeQuery();

			if (rs.next()) {
				status = true;
				statement = connection
						.prepareCall("UPDATE " + TABLE_NAME + " SET " + SESSION + " = ? WHERE id = " + rs.getInt("id"));
				statement.setString(1, session);
				status = statement.executeUpdate() == 1;
			}

		} catch (SQLException ex) {
			System.out.println(ex.getMessage());

		} finally {
			try {
				if (connection != null)
					connection.close();
				if (statement != null)
					statement.close();
				if (rs != null)
					rs.close();
			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
		}
		return status;
	}

	public static int logout(String sessionId) {
		Vendor vendor = getBySession(sessionId);
		connection = dbConnector.getConnection();
		int status = 0;
		try {
			statement = connection
					.prepareCall("UPDATE " + TABLE_NAME + " SET " + SESSION + " = null WHERE id= " + vendor.getId());
			status = statement.executeUpdate();

		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
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
				System.out.println(ex.getMessage());
			}
		}
		return status;
	}

	private static void inputer(ResultSet rs, Vendor vendor) throws SQLException {
		vendor.setId(rs.getInt(DatabaseConnector.ID));
		vendor.setName(rs.getString(NAME));
		vendor.setEmail(rs.getString(EMAIL));
		vendor.setPhoneNumber(rs.getString(PHONE_NUMBER));
		vendor.setIsActive(rs.getBoolean(IS_ACTIVE));
		vendor.setLastAccessTime(rs.getTimestamp(LAST_ACCESS));
		vendor.setSession(rs.getString(SESSION));
		vendor.setAccCreateTime(rs.getTimestamp(ACC_CREATE_TIME));
	}
}
