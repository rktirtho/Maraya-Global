package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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
    public static String SESSION = "session";
    public static String LAST_ACCESS = "last_access_time";
    public static String ACC_CREATE_TIME = "acc_create_time";
    public static String COMMA = ", ";
    
    
    
    static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
    static Connection connection = null;
    static PreparedStatement statement = null;
    static ResultSet rs = null;

    public static void main(String[] args) {
      List<Vendor> vendors = getall();
      for (Vendor vendor : vendors) {
		System.out.println(vendor.getName());
	}


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
            	if (connection!= null) {
            		connection.close();
				}
            	if (statement!= null) {
            		  statement.close();
				}
            	if (rs!=null) {
            		rs.close();
				}
                
            } catch (SQLException ex) {
                Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return vendors;
    }

    
}
