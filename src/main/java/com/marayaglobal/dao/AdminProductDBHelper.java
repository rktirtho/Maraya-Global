package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.marayaglobal.product.AdminProduct;

public class AdminProductDBHelper {
	
	 public static String TABLE_NAME="admin_product";
	 public static String ID="id";
	 public static String TITLE="title";
	 public static String CATEGORY="category";
	 public static String REGULAR_PRICE="regular_price";
	 public static String DISCOUNT="discount";
	 public static String BRAND="brand";
	 public static String MODEL="model";
	 public static String PROCESSOR="processor";
	 public static String GENARATION="genaration";
	 public static String CLOCK_SPEED="clock_speed";
	 public static String CACHE="cache";
	 public static String DISPLAY_TYPE="display_type";
	 public static String DISPLAY_RESULATION="display_resulation";
	 public static String DISPLAY_SIZE="display_size";
	 public static String TOUCH="touch";
	 public static String RAM_TYPE="ram_type";
	 public static String RAM="ram";
	 
	 public static String MAIN_CAMERA = "main_camera";
	 public static String SELFIE_CAMERA = "selfie_camera";
	 public static String ANNOUNCED = "announced";
	 public static String WLAN = "wlan";
	 public static String BLUETOOTH = "bluetooth";
	 public static String DIMENSIONS = "dimensions";
	 
	 
	 public static String STORAGE="storage";
	 public static String GRAPHICS_CHIPSET="graphics_chipset";
	 public static String GRAPHICS_MEMORY="graphics_memory";
	 public static String NETWORKING="networking";
	 public static String DISPLAY_PORT="display_port";
	 public static String AUDIO_PORT="audio_port";
	 public static String USB_PORT="usb_port";
	 public static String BETTERY="bettery";
	 public static String WEIGHT="weight";
	 public static String COLOR="color";
	 public static String VIEW="view";	 
	 public static String OPERATING_SYSTEM="operating_system";
	 public static String PORT_NO="port_no";
	 public static String WARRENTY="warrenty";
	 public static String DESCRIPTION="description";
	 public static String PRIMARY_IMAGE="primary_image";
	 public static String TIME="time";
	 
	 

	    static DatabaseConnector dbConnection = DatabaseConnector.getInstance();
	    static PreparedStatement statement = null;
	    static ResultSet rs = null;
	    static Connection connection = null;
	 
	    public static void main(String[] args) {
			List<AdminProduct> products = getAll();
			for (AdminProduct product : products) {
				System.out.println(product);
			}
	    	//System.out.println(getById(2));
		}
	 
	 public static List<AdminProduct> getAll() {
	        List<AdminProduct> products = new ArrayList<>();
	        connection = dbConnection.getConnection();
	        try {
	            String query = "SELECT * FROM " + TABLE_NAME;
	            statement = connection.prepareCall(query);
	            rs = statement.executeQuery();
	            while (rs.next()) {
	                AdminProduct product = new AdminProduct();
	                inputter(rs, product);
	                products.add(product);
	            }
	        } catch (SQLException ex) {
	            Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
	        }finally {
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
	 
	 
	 
	 public static AdminProduct getById(int id) {
	       AdminProduct product = new AdminProduct();
	        connection = dbConnection.getConnection();
	        try {
	            String query = "SELECT * FROM " + TABLE_NAME +" WHERE "+ID+" =?";
	            statement = connection.prepareCall(query);
	            statement.setInt(1, id);
	            rs = statement.executeQuery();
	            while (rs.next()) {
	                inputter(rs, product);
	            }
	        } catch (SQLException ex) {
	            Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
	        }finally {
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
	        return product;
	    }
	 
	 
	 
	 
	 static void inputter(ResultSet rs, AdminProduct product) throws SQLException {
		 
		 product.setId(rs.getInt(ID));
		 product.setTitle(rs.getString(TITLE));
		 product.setCategory(rs.getString(CATEGORY));
		 product.setRegularprice(rs.getDouble(REGULAR_PRICE));
		 product.setDiscount(rs.getFloat(DISCOUNT));
		 product.setBrand(rs.getString(BRAND));
		 product.setModel(rs.getString(MODEL));
		 product.setProcessor(rs.getString(PROCESSOR));
		 product.setGenaration(rs.getString(GENARATION));
		 product.setClockSpeed(rs.getString(CLOCK_SPEED));
		 product.setCache(rs.getString(CACHE));
		 product.setDisplayType(rs.getString(DISPLAY_TYPE));
		 product.setDisplayResulation(rs.getString(DISPLAY_RESULATION));
		 product.setDisplaySize(rs.getString(DISPLAY_SIZE));
		 product.setTouch(rs.getString(TOUCH));
		 product.setRamType(rs.getString(RAM_TYPE));
		 product.setRam(rs.getString(RAM));
		 
		 product.setMainCamera(rs.getString(MAIN_CAMERA));
		 product.setSelfieCamera(rs.getString(SELFIE_CAMERA));
		 product.setBluetooth(rs.getString(BLUETOOTH));
		 product.setWlan(rs.getString(WLAN));
		 product.setAnnounced(rs.getString(ANNOUNCED));
		 //product.setDimensions(rs.getString(DIMENSIONS));
		 
		 product.setStorage(rs.getString(STORAGE));
		 product.setGraphicsChipset(rs.getString(GRAPHICS_CHIPSET));
		 product.setGraphicsMemory(rs.getString(GRAPHICS_MEMORY));
		 product.setNetworking(rs.getString(NETWORKING));
		 product.setDisplayPort(rs.getString(DISPLAY_PORT));
		 product.setAudioPort(rs.getString(AUDIO_PORT));
		 product.setUsbPort(rs.getString(USB_PORT));
		 product.setBettery(rs.getString(BETTERY));
		 product.setWeight(rs.getString(WEIGHT));
		 product.setColor(rs.getString(COLOR));
		 product.setView(rs.getInt(VIEW));
		 product.setOperatingSystem(rs.getString(OPERATING_SYSTEM));
		 product.setPortNo(rs.getString(PORT_NO));
		 product.setWarrenty(rs.getString(WARRENTY));
		 product.setDescription(rs.getString(DESCRIPTION));
		 product.setPrimaryImage(rs.getString(PRIMARY_IMAGE));
		 product.setTime(rs.getTimestamp(TIME));
		 
	 }

}
