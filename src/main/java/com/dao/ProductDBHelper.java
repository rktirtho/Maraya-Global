/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import static com.dao.AddressDBHelper.AREA_NAME;
import static com.dao.AddressDBHelper.DISTRICT;
import static com.dao.AddressDBHelper.POST_CODE;
import static com.dao.AddressDBHelper.STREET_NAME;
import static com.dao.AddressDBHelper.USER_ID;
import com.tirtho.beans.product.Product;
import com.tirtho.beans.user.Address;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class ProductDBHelper {

    public static String TABLE_NAME = "product";
    public static String AUTHOR_ID = "authorId";
    public static String TITLE = "title";
    public static String CATEGORY = "category";
    public static String SUB_CATEGORY = "subCategory";
    public static String BRAND_NAME = "brandName";
    public static String UNIT_SIZE = "unitSize";
    public static String UNIT_PRICE = "unitPrice";
    public static String DISCOUNT = "discount";
    public static String VIEW = "view";
    public static String MENOTISE_AMMOUNT = "menotiseAmmount";
    public static String IS_AVAILABLE = "isAvailable";
    public static String IS_PUBLISHED = "isPublished";
    public static String DESCRIPTION = "description";
    public static String ADD_TIME = "add_time";
//    public static List<String> images;

    static DatabaseConnector dbConnection = DatabaseConnector.getInstance();
    static PreparedStatement statement = null;
    static ResultSet rs = null;
    static Connection connection = null;

    public static void main(String[] args) {
        List<Product> all = getAllByCategory("Bangla",10,20);
        for (Product arg : all) {
            System.out.println(arg);
        }
    }



    private static List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        connection = dbConnection.getConnection();
        try {
            String query = "SELECT * FROM " + TABLE_NAME;
            statement = connection.prepareCall(query);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                inputer(rs, product);
                products.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (!connection.isClosed()) {
                    connection.close();
                }
                if (!statement.isClosed()) {
                    statement.close();
                }
                if (!rs.isClosed()) {
                    rs.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return products;
    }
     private static List<Product> getAll(int start, int end) {
        List<Product> products = new ArrayList<>();
        connection = dbConnection.getConnection();
        try {
            String query = "SELECT * FROM " + TABLE_NAME +" order by id LIMIT "+start+","+ end;
            statement = connection.prepareCall(query);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                inputer(rs, product);
                products.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (!connection.isClosed()) {
                    connection.close();
                }
                if (!statement.isClosed()) {
                    statement.close();
                }
                if (!rs.isClosed()) {
                    rs.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return products;
    }
      private static List<Product> getAllByAuthorId(int authorId, int start, int end) {
        List<Product> products = new ArrayList<>();
        connection = dbConnection.getConnection();
        try {
            String query = "SELECT * FROM " + TABLE_NAME 
                    +" where "+AUTHOR_ID+"=? order by id LIMIT "+start+","+ end;
            statement = connection.prepareCall(query);
            statement.setString(1, AUTHOR_ID);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                inputer(rs, product);
                products.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (!connection.isClosed()) {
                    connection.close();
                }
                if (!statement.isClosed()) {
                    statement.close();
                }
                if (!rs.isClosed()) {
                    rs.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return products;
    }
     
     
     private static List<Product> getAllByKeyWord(String keyword, int start, int end) {
        List<Product> products = new ArrayList<>();
        connection = dbConnection.getConnection();
        try {
            String query = "SELECT * FROM " + TABLE_NAME +" where "
                    +TITLE+" LIKE \'"+keyword+" OR "
                    +CATEGORY+" LIKE \'"+keyword +" OR "
                    +SUB_CATEGORY+" LIKE \'"+keyword +" OR "
                    +DESCRIPTION+" LIKE \'"+keyword +" OR "
                    +"\' order by id LIMIT "+start+","+ end;
            
            statement = connection.prepareCall(query);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                inputer(rs, product);
                products.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (connection!=null) {
                    connection.close();
                }
                if (statement!=null) {
                    statement.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return products;
    }
     
     private static List<Product> getAllByCategory(String Catgory, int start, int end) {
        List<Product> products = new ArrayList<>();
        connection = dbConnection.getConnection();
        try {
            String query = "SELECT * FROM " + TABLE_NAME +" where "
                    +CATEGORY+" = \""+Catgory
                    +"\" order by id LIMIT "+start+","+ end;
            
            statement = connection.prepareCall(query);
            rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                inputer(rs, product);
                products.add(product);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (connection!=null) {
                    connection.close();
                }
                if (statement!=null) {
                    statement.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return products;
    }

    private static void inputer(ResultSet rs, Product product) throws SQLException {
        product.setId(rs.getInt(DatabaseConnector.ID));
        product.setAuthorId(rs.getInt(AUTHOR_ID));
        product.setTitle(rs.getString(TITLE));
        product.setCategory(rs.getString(CATEGORY));
        product.setSubCategory(rs.getString(SUB_CATEGORY));
        product.setBrandName(rs.getString(BRAND_NAME));
        product.setUnitSize(rs.getString(UNIT_SIZE));
        product.setDescription(rs.getString(DESCRIPTION));
        product.setUnitPrice(rs.getFloat(UNIT_PRICE));
        product.setDiscount(rs.getFloat(DISCOUNT));
        product.setMenotiseAmmount(rs.getFloat(MENOTISE_AMMOUNT));
        product.setView(rs.getInt(VIEW));
        product.setAdd_time(rs.getTimestamp(ADD_TIME));
        product.setIsPublished(rs.getBoolean(IS_PUBLISHED));
        product.setIsAvailable(rs.getBoolean(IS_AVAILABLE));

    }
}
