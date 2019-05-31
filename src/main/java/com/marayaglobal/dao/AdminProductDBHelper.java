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

	public static String TABLE_NAME = "admin_product";
	public static String ID = "id";
	public static String TITLE = "title";
	public static String CATEGORY = "category";
	public static String REGULAR_PRICE = "regular_price";
	public static String DISCOUNT = "discount";
	public static String BRAND = "brand";
	public static String MODEL = "model";
	public static String PROCESSOR = "processor";
	public static String GENARATION = "genaration";
	public static String CLOCK_SPEED = "clock_speed";
	public static String CACHE = "cache";
	public static String DISPLAY_TYPE = "display_type";
	public static String DISPLAY_RESULATION = "display_resulation";
	public static String DISPLAY_SIZE = "display_size";
	public static String TOUCH = "touch";
	public static String RAM_TYPE = "ram_type";
	public static String RAM = "ram";

	public static String MAIN_CAMERA = "main_camera";
	public static String SELFIE_CAMERA = "selfie_camera";
	public static String ANNOUNCED = "announced";
	public static String WLAN = "wlan";
	public static String BLUETOOTH = "bluetooth";
	public static String DIMENSIONS = "dimensions";

	public static String STORAGE = "storage";
	public static String GRAPHICS_CHIPSET = "graphics_chipset";
	public static String GRAPHICS_MEMORY = "graphics_memory";
	public static String NETWORKING = "networking";
	public static String DISPLAY_PORT = "display_port";
	public static String AUDIO_PORT = "audio_port";
	public static String USB_PORT = "usb_port";
	public static String BETTERY = "bettery";
	public static String WEIGHT = "weight";
	public static String COLOR = "color";
	public static String VIEW = "view";
	public static String OPERATING_SYSTEM = "operating_system";
	public static String PORT_NO = "port_no";
	public static String WARRENTY = "warrenty";
	public static String DESCRIPTION = "description";
	public static String PRIMARY_IMAGE = "primary_image";
	public static String TIME = "time";
	public static String COMMA = ", ";

	static DatabaseConnector dbConnection = DatabaseConnector.getInstance();
	static PreparedStatement statement = null;
	static ResultSet rs = null;
	static Connection connection = null;

	public static void main(String[] args) {
		List<AdminProduct> products = getAll("electronics","regular_price", 1, 10);
		for (AdminProduct product : products) {
			System.out.println(product);
		}
		// System.out.println(getById(2));
	}

	public static int insert(AdminProduct product) {
		connection = dbConnection.getConnection();
		try {
			statement = connection.prepareCall("INSERT INTO " + TABLE_NAME + " (" 
					 +TITLE
			+COMMA+ CATEGORY
			+COMMA+ REGULAR_PRICE
			+COMMA+ DISCOUNT
			+COMMA+ BRAND
			+COMMA+ MODEL
			+COMMA+ PROCESSOR
			+COMMA+ GENARATION 
			+COMMA+ CLOCK_SPEED 
			+COMMA+ CACHE
			+COMMA+ DISPLAY_TYPE
			+COMMA+ DISPLAY_RESULATION 
			+COMMA+ DISPLAY_SIZE
			+COMMA+ TOUCH
			+COMMA+ RAM_TYPE
			+COMMA+ RAM

			+COMMA+ MAIN_CAMERA
			+COMMA+ SELFIE_CAMERA
			+COMMA+ ANNOUNCED
			+COMMA+ WLAN
			+COMMA+ BLUETOOTH
			+COMMA+ DIMENSIONS

			+COMMA+ STORAGE
			+COMMA+ GRAPHICS_CHIPSET
			+COMMA+ GRAPHICS_MEMORY
			+COMMA+ NETWORKING
			+COMMA+ DISPLAY_PORT
			+COMMA+ AUDIO_PORT
			+COMMA+ USB_PORT
			+COMMA+ BETTERY
			+COMMA+ WEIGHT
			+COMMA+ COLOR
			+COMMA+ OPERATING_SYSTEM
			+COMMA+ PORT_NO
			+COMMA+ WARRENTY
			+COMMA+ DESCRIPTION
			+COMMA+ PRIMARY_IMAGE

		+") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			statement.setString(1,  product.getTitle());
			statement.setString(2,  product.getCategory());
			statement.setDouble(3,  product.getRegularprice());
			statement.setFloat( 4,  product.getDiscount());
			statement.setString(5,  product.getBrand());
			statement.setString(6, product.getModel());
			statement.setString(7,  product.getProcessor() );
			statement.setString(8,  product.getGenaration() );
			statement.setString(9,  product.getClockSpeed() );
			statement.setString(10,  product.getCache() );
			statement.setString(11, product.getDisplayType() );
			statement.setString(12, product.getDisplayResulation());
			statement.setString(13, product.getDisplaySize());
			statement.setString(14, product.getTouch() );
			statement.setString(15, product.getRamType());
			statement.setString(16, product.getRam());
			statement.setString(17, product.getMainCamera());
			statement.setString(18, product.getSelfieCamera());
			statement.setString(19, product.getAnnounced());
			statement.setString(20, product.getWlan());
			statement.setString(21, product.getBluetooth() );
			statement.setString(22, product.getDimensions());
			statement.setString(23, product.getStorage() );
			statement.setString(24, product.getGraphicsChipset() );
			statement.setString(25, product.getGraphicsMemory());
			statement.setString(26, product.getNetworking() );
			statement.setString(27, product.getDisplayPort() );
			statement.setString(28, product.getAudioPort() );
			statement.setString(29, product.getUsbPort() );
			statement.setString(30, product.getBettery() );
			statement.setString(31, product.getWeight() );
			statement.setString(32, product.getColor() );
			statement.setString(33, product.getOperatingSystem());
			statement.setString(34, product.getPortNo() );
			statement.setString(35, product.getWarrenty() );
			statement.setString(36, product.getDescription() );
			statement.setString(37, product.getPrimaryImage());
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public static List<AdminProduct> getAll(String category, int statr, int end) {
		List<AdminProduct> products = new ArrayList<>();
		connection = dbConnection.getConnection();
		try {

			statement = connection.prepareCall(
					"SELECT * FROM " + TABLE_NAME + " WHERE " + CATEGORY + " =? limit " + statr + "," + end);
			statement.setString(1, category);
			rs = statement.executeQuery();
			while (rs.next()) {
				AdminProduct product = new AdminProduct();
				inputter(rs, product);
				products.add(product);
			}
		} catch (SQLException ex) {
			Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return products;
	}
	
	
	public static List<AdminProduct> getAll(String category, String orderBy, int statr, int end) {
		List<AdminProduct> products = new ArrayList<>();
		connection = dbConnection.getConnection();
		try {

			statement = connection.prepareCall(
					"SELECT * FROM " + TABLE_NAME + " WHERE " + CATEGORY + " =? order by "+orderBy+" limit " + statr + "," + end);
			statement.setString(1, category);
			rs = statement.executeQuery();
			while (rs.next()) {
				AdminProduct product = new AdminProduct();
				inputter(rs, product);
				products.add(product);
			}
		} catch (SQLException ex) {
			Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return products;
	}

	public static List<AdminProduct> search(String key, int statr, int end) {
		List<AdminProduct> products = new ArrayList<>();
		connection = dbConnection.getConnection();
		try {

			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME + " WHERE " + TITLE + " like \"%" + key
					+ "%\" limit " + statr + "," + end);
			rs = statement.executeQuery();
			while (rs.next()) {
				AdminProduct product = new AdminProduct();
				inputter(rs, product);
				products.add(product);
			}
		} catch (SQLException ex) {
			Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return products;
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}
		}
		return products;
	}

	public static AdminProduct getById(int id) {
		AdminProduct product = new AdminProduct();
		connection = dbConnection.getConnection();
		try {
			String query = "SELECT * FROM " + TABLE_NAME + " WHERE " + ID + " =?";
			statement = connection.prepareCall(query);
			statement.setInt(1, id);
			rs = statement.executeQuery();
			while (rs.next()) {
				inputter(rs, product);
			}
		} catch (SQLException ex) {
			Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
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
		// product.setDimensions(rs.getString(DIMENSIONS));

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
