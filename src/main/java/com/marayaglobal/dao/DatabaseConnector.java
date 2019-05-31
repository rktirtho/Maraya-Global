/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tirtho
 */
public class DatabaseConnector {

    public static void main(String[] arg) {
        getInstance().getConnection();
        
    }

    private static DatabaseConnector connector = new DatabaseConnector();
    private Connection connection = null;
    public static String ID = "id";

    private final static String DATABASE_HOST = "jdbc:mysql://localhost:3306/";
    private final static String DATABASE_NAME = "maraya_global";
    private final static String DATABASE_USER_NAME = "root";
    private final static String DATABASE_PASSWORD = "root";
    private final static String EXIST_CHECK = "CREATE TABLE IF NOT EXISTS ";

    private final static String DATABASE_CREATE_COMMAND = "CREATE DATABASE IF NOT EXISTS "+ DATABASE_NAME;
    private final static String TABLE_CREATION_COMMAND_CUSTOMER = EXIST_CHECK+CustomerDBHelper.TABLE_NAME+ " ("
            + DatabaseConnector.ID + " int(20) NOT NULL AUTO_INCREMENT,"
            + CustomerDBHelper.NAME + " varchar(50) NOT NULL,"
            + CustomerDBHelper.PHONE_NUMBER + " varchar(15) NOT NULL,"
            + CustomerDBHelper.EMAIL +" varchar(100) NOT NULL,"
            + CustomerDBHelper.PASSWORD + " varchar(255) NOT NULL,"
            + CustomerDBHelper.IS_ACTIVE + " boolean DEFAULT false,"
            + CustomerDBHelper.ACC_CREATE_TIME + " timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,"
            + "  PRIMARY KEY (" + DatabaseConnector.ID + ")"
            + ")";
     private final static String TABLE_CREATION_COMMAND_PRODUCT = EXIST_CHECK +  ProductDBHelper.TABLE_NAME+ " ("
            + ID+" int(20) NOT NULL AUTO_INCREMENT,"
            + ProductDBHelper.AUTHOR_ID+" int(20) NOT NULL,"
            + ProductDBHelper.TITLE+ " varchar(225) NOT NULL,"
            + ProductDBHelper.CATEGORY+ " varchar(100) default NULL,"
            + ProductDBHelper.SUB_CATEGORY+ " varchar(100) default NULL,"
            + ProductDBHelper.BRAND_NAME+ " varchar(100) default NULL,"
            + ProductDBHelper.UNIT_SIZE+ " varchar(100) NOT NULL,"
            + ProductDBHelper.UNIT_PRICE+ " double(10,2) NOT NULL,"
            + ProductDBHelper.VIEW+ " int(20) default 0,"
            + ProductDBHelper.MENOTISE_AMMOUNT+ " int(20) default NULL,"
            + ProductDBHelper.DISCOUNT+ " float default NULL,"
            + ProductDBHelper.IS_AVAILABLE+ " boolean default true,"
            + ProductDBHelper.IS_PUBLISHED+ " int(20) default true,"
            + ProductDBHelper.DESCRIPTION+ " varchar(255) default NULL,"
            + "  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,"
            + "  PRIMARY KEY (`id`)"
            + ")";
    

     private final static String TABLE_CREATION_COMMAND_ADDRESS = EXIST_CHECK +  AddressDBHelper.TABLE_NAME+ " ("
            + AddressDBHelper.ID+" int(20) NOT NULL AUTO_INCREMENT,"
            + AddressDBHelper.USER_ID+ " int(20) NOT NULL,"
            + AddressDBHelper.STREET_NAME+ " varchar(255) NOT NULL,"
            + AddressDBHelper.AREA_NAME+ " varchar(225) NOT NULL,"
            + AddressDBHelper.DISTRICT+ " varchar(225) NOT NULL,"
            + AddressDBHelper.POST_CODE+ " varchar(4) NOT NULL,"
            + "  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,"
            + "  PRIMARY KEY (`id`)"
            + ")";
     
     private final static String TABLE_CREATION_COMMAND_IMAGE = EXIST_CHECK +  ProductImageDBHelper.TABLE_NAME+ " ("
            + ProductImageDBHelper.ID+" int(20) NOT NULL AUTO_INCREMENT,"
            + ProductImageDBHelper.PID+ " int(20) NOT NULL,"
            + ProductImageDBHelper.URL+ " varchar(255) NOT NULL,"
            + "  PRIMARY KEY (`id`)"
            + ")";

 

    private DatabaseConnector() {
         
    }

    public  Connection getConnection() {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(DATABASE_HOST,
                    DATABASE_USER_NAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();

            statement.executeUpdate(DATABASE_CREATE_COMMAND);

            connection = DriverManager.getConnection(DATABASE_HOST + DATABASE_NAME,
                    DATABASE_USER_NAME, DATABASE_PASSWORD);
            statement = connection.createStatement();

            statement.executeUpdate(TABLE_CREATION_COMMAND_CUSTOMER);
            statement.executeUpdate(TABLE_CREATION_COMMAND_PRODUCT);
            statement.executeUpdate(TABLE_CREATION_COMMAND_ADDRESS);
            statement.executeUpdate(TABLE_CREATION_COMMAND_IMAGE);
           
//            

        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        	//Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
            
        }
        return connection;
    }

    public static DatabaseConnector getInstance() {
        if (connector == null) {
            connector = new DatabaseConnector();
        }
        return connector;
    }
}
