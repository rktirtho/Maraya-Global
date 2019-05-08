/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.marayaglobal.dao;

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
 * @author DELL
 */
public class ProductImageDBHelper {

    static String TABLE_NAME = "images";
    public static String ID = "id";
    public static String PID = "pId";
    public static String URL = "url";

    static DatabaseConnector dbConnection = DatabaseConnector.getInstance();
    static PreparedStatement statement = null;
    static ResultSet rs = null;
    static Connection connection = null;
    
    
    public static void main(String[] args) {
        for (String image : images(3)) {
            System.out.println("image\t"+image);
        }
    }

    public static List<String> images(int pId) {
        List<String> images = new ArrayList<>();
        connection = dbConnection.getConnection();
        try {
            statement = connection.prepareCall("SELECT " + URL 
                    + " FROM " + TABLE_NAME + " WHERE " + PID + " = " + pId);
            rs =  statement.executeQuery();
            while (rs.next()) {                
                images.add(rs.getString(URL));
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductImageDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        }

        return images;
    }

}
