package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import com.marayaglobal.beans.user.Address;
import com.marayaglobal.beans.user.Customer;
import com.marayaglobal.beans.user.ShippingAddress;
import com.marayaglobal.order.Cart;
import com.marayaglobal.order.CartView;
import com.marayaglobal.order.Order;
import com.marayaglobal.order.OrderView;

public class OrderDBHelper {
	public static String TABLE_NAME = "orders";
	public static String ID = "id";
	public static String PRODUCTID = "productId";
	public static String CUSTOMER_ID = "customer_id";
	public static String QUANTITY = "quantity";
	public static String CURRENT_PRICE = "current_price";
	public static String IS_PLACED = "is_placed";
	public static String SHIPPING_PHONE = "shipping_phone";
	public static String SHIPPING_AREA = "shipping_area";
	public static String SHIPPING_CITY = "shipping_city";
	public static String SHIPPING_POST_CODE = "shipping_post_code";
	public static String SHIPPING_STATUS = "shipping_status";
	public static String ORDER_PLACED = "order_placed";

	public static String COMMA = ", ";

	static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
	static Connection connection = null;
	static PreparedStatement statement = null;
	static ResultSet rs = null;

	public static void main(String[] args) {
System.out.println(markAs(1, "Processing"));
	}

	public static int orderPlacer(List<CartView> carts, ShippingAddress address) {
		int status = 0;
		System.out.println(dbConnector == null);
		connection = dbConnector.getConnection();
		System.out.println(connection == null);
		for (CartView cart : carts) {
			try {
				statement = connection.prepareCall("UPDATE orders set " + IS_PLACED + " =?, " + SHIPPING_STATUS
						+ " =?, " + SHIPPING_PHONE + " =?, " + SHIPPING_AREA + " =?, " + SHIPPING_CITY + " =?, "
						+ CURRENT_PRICE + " =?, " + SHIPPING_POST_CODE + " =? WHERE id=" + cart.getId());
				statement.setBoolean(1, true);
				statement.setString(2, "New");
				statement.setString(3, address.getPhoneNumber());
				statement.setString(4, address.getAddress());
				statement.setString(5, address.getCity());
				statement.setDouble(6, cart.getCurrentPrice());
				statement.setString(7, address.getPostCode());
				status = statement.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e.getMessage());
			}
		}
		return status;
	}

	public static List<Order> allOrders() {
		List<Order> orders = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			String command = "select * from " + TABLE_NAME + " where " + IS_PLACED + "=true";

			statement = connection.prepareStatement(command);
			rs = statement.executeQuery();

			while (rs.next()) {
				Order order = new Order();
				inputer(rs, order);
				orders.add(order);
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

		return orders;
	}

	public static List<Order> allOrderByShippingStatus(String status) {
		List<Order> orders = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			String command = "select * from " + TABLE_NAME + " where " + IS_PLACED + "=true and " + SHIPPING_STATUS
					+ "=?";

			statement = connection.prepareStatement(command);
			statement.setString(1, status);
			rs = statement.executeQuery();

			while (rs.next()) {
				Order order = new Order();
				inputer(rs, order);
				orders.add(order);
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

		return orders;
	}
	
	
	
	public static List<Order> allOrderByShippingStatus(String status, int start, int end) {
		List<Order> orders = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			String command = "select * from " + TABLE_NAME + " where " + IS_PLACED + "=true and " + SHIPPING_STATUS
					+ "=? limit "+start+","+end;

			statement = connection.prepareStatement(command);
			statement.setString(1, status);
			rs = statement.executeQuery();

			while (rs.next()) {
				Order order = new Order();
				inputer(rs, order);
				orders.add(order);
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

		return orders;
	}

	public static List<Order> getOrderByStatus(String status) {
		List<Order> orders = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("select orders.id, customer.id as 'cutomer_id', "
					+ "customer.name, admin_product.title, admin_product.brand, admin_product.model, "
					+ "orders.shipping_status,  orders.id,  orders.quantity, orders.current_price, orders.order_placed,"
					+ " orders.shipping_phone, orders.shipping_area, orders.shipping_city, orders.shipping_post_code "
					+ "from customer " + "inner join orders " + "inner join admin_product "
					+ "where customer.id= orders.customer_id " + "and admin_product.id = orders.productId "
					+ "and is_placed=true and shipping_status=?  order by orders.order_placed desc");

			statement.setString(1, status);
			rs = statement.executeQuery();

			while (rs.next()) {
				Order order = new Order();
				inputer(rs, order);
				orders.add(order);
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return orders;
	}

	public static List<OrderView> getOrderByCustomerId(int id, String status) {
		List<OrderView> orders = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("select  orders.id as order_id, admin_product.id as product_id,"
					+ " admin_product.title, admin_product.brand, admin_product.model, orders.quantity, "
					+ "orders.current_price, orders.order_placed " + "from admin_product " + "inner join orders "
					+ "where admin_product.id = orders.productId and orders.customer_id=? and orders.is_placed=true and shipping_status =?");
			statement.setInt(1, id);
			statement.setString(2, status);
			rs = statement.executeQuery();

			while (rs.next()) {
				OrderView order = new OrderView();
				inputer(rs, order);
				orders.add(order);
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return orders;
	}

	public static List<OrderView> getRecentOrder(int id) {
		List<OrderView> orders = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("select  orders.id as order_id, admin_product.id as product_id,"
					+ " admin_product.title, admin_product.brand, admin_product.model, orders.quantity, "
					+ "orders.current_price, orders.order_placed " + "from admin_product " + "inner join orders "
					+ "where admin_product.id = orders.productId and orders.customer_id=? and orders.is_placed=true and shipping_status =? order by orders.order_placed desc limit 5");
			statement.setInt(1, id);
			statement.setString(2, "Delivered");
			rs = statement.executeQuery();

			while (rs.next()) {
				OrderView order = new OrderView();
				inputer(rs, order);
				orders.add(order);
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return orders;
	}

	public static boolean markAs(int id,String mark) {
		boolean status = false;
		connection = dbConnector.getConnection();

		try {
			statement = connection.prepareCall("UPDATE " + TABLE_NAME + " SET " 
		+ SHIPPING_STATUS + "=? WHERE "+ID+"="+id);
			statement.setString(1, mark);
			status = statement.executeUpdate() == 1;

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
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return status;
	}

	public static List<OrderView> getOrderByCustomerId(int id) {
		List<OrderView> orders = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("select  orders.id as order_id, admin_product.id as product_id,"
					+ " admin_product.title, admin_product.brand, orders.quantity, "
					+ "orders.current_price, admin_product.model, orders.order_placed, orders.shipping_status "
					+ "from admin_product " + "inner join orders "
					+ "where admin_product.id = orders.productId and orders.customer_id=? and orders.is_placed=true");
			statement.setInt(1, id);
			rs = statement.executeQuery();

			while (rs.next()) {
				OrderView order = new OrderView();
				inputer(rs, order);
				orders.add(order);
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
				Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
			}

		}

		return orders;
	}

	private static void inputer(ResultSet rs, OrderView order) throws SQLException {
		order.setId(rs.getInt("order_id"));
		order.setProductId(rs.getInt("product_id"));
		order.setTitle(rs.getString("title"));
		order.setBrand(rs.getString("brand"));
		order.setQuantity(rs.getInt("quantity"));
		order.setCurrentPrice(rs.getInt("current_price"));
		order.setModel(rs.getString("model"));
		// order.setRegular_price(rs.getDouble(AdminProductDBHelper.REGULAR_PRICE));
		// order.setDiscount(rs.getFloat(AdminProductDBHelper.DISCOUNT));

		order.setStatus(rs.getString(SHIPPING_STATUS));
//	    private Timestamp timestamp;
		order.setTimestamp(rs.getTimestamp(ORDER_PLACED));

	}

	private static void inputer(ResultSet rs, Order order) throws SQLException {
		order.setOrderId(rs.getInt(ID));
		order.setCustomerId(rs.getInt("cutomer_id"));
		order.setCustomerName(rs.getString("name"));
		order.setProductTitle(rs.getString("title"));
		order.setProductBrand(rs.getString("brand"));
		order.setProductModel(rs.getString("model"));
		order.setShippingStatus(rs.getString("shipping_status"));
		order.setQuantity(rs.getInt("quantity"));
		order.setPrice(rs.getInt(CURRENT_PRICE));
		order.setShippingPhone(rs.getString(SHIPPING_PHONE));
		order.setShippingArea(rs.getString(SHIPPING_AREA));
		order.setShippingCity(rs.getString(SHIPPING_CITY));
		order.setShippingPostCode(rs.getString(SHIPPING_POST_CODE));
		order.setTimestamp(rs.getTimestamp(ORDER_PLACED));

	}

}
