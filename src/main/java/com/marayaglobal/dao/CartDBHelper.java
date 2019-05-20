package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.marayaglobal.order.Cart;
import com.marayaglobal.order.CartView;

public class CartDBHelper {


	static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
	static Connection connection = null;
	static PreparedStatement statement = null;
	static ResultSet rs = null;


	public static void main(String[] args) {
		System.out.println(create(4, 1));
	}

    public static int create(int id, int cId) {
        int status =0;

        connection = dbConnector.getConnection();
        try {
            statement = connection.prepareCall("INSERT INTO "
                    + OrderDBHelper.TABLE_NAME + "("
                    + OrderDBHelper.PRODUCTID +  OrderDBHelper.COMMA
                    + OrderDBHelper.CUSTOMER_ID +  OrderDBHelper.COMMA
                    + OrderDBHelper.QUANTITY
                    + ") values(?,?,?)");
            statement.setInt(1, id);
            statement.setInt(2, cId);
            statement.setInt(3, 1);
            status = statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CustomerDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
            try {
                if (connection!=null) {
                    connection.close();
                }
                if (statement!=null) {
                    statement.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
        return status;
    }

//    public int update(int id, int quantity) {
//    	int status =0;
//    	connection = dbConnector.getConnection();
//    	try {
//			statement = connection.prepareCall("UPDATE "+TABLE_NAME +" SET "+QUANTITY+" = "+quantity+" WHERE "+ID+" = "+id);
//			status = statement.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}finally {
//            try {
//                if (connection!=null) {
//                    connection.close();
//                }
//                if (statement!=null) {
//                    statement.close();
//                }
//            } catch (SQLException ex) {
//                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        } 
//    	return status;
//    }
//    
//    public int delete(int id) {
//    	int status =0;
//    	connection = dbConnector.getConnection();
//    	try {
//			statement = connection.prepareCall("DELETE FORM "+TABLE_NAME +" WHERE "+ID+" = "+id);
//			status = statement.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}finally {
//            try {
//                if (connection!=null) {
//                    connection.close();
//                }
//                if (statement!=null) {
//                    statement.close();
//                }
//            } catch (SQLException ex) {
//                Logger.getLogger(ProductDBHelper.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        } 
//    	
//    	return status;
//    }
//    
	public static List<CartView> getCartByCustomerId(int id) {
		List<CartView> carts = new ArrayList<>();
		connection = dbConnector.getConnection();
		try {
			statement = connection.prepareCall("select  orders.id as order_id, admin_product.id as product_id,"
					+ " admin_product.title, admin_product.brand, orders.quantity, admin_product.regular_price,"
					+ " admin_product.discount, orders.is_placed " + 
					"from admin_product " + 
					"inner join orders " + 
					"where admin_product.id = orders.productId and orders.customer_id=? and orders.is_placed=false");
			statement.setInt(1, id);
			rs = statement.executeQuery();

			while (rs.next()) {
				CartView cart = new CartView();
				inputer(rs, cart);
				carts.add(cart);
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

		return carts;
	}

	private static void inputer(ResultSet rs, CartView cart) throws SQLException {
		cart.setId(rs.getInt("order_id"));
		cart.setProductId(rs.getInt("product_id"));
		cart.setTitle(rs.getString("title"));
		cart.setBrand(rs.getString("brand"));
		cart.setQuantity(rs.getInt("quantity"));
		cart.setRegular_price(rs.getDouble(AdminProductDBHelper.REGULAR_PRICE));
		cart.setDiscount(rs.getFloat(AdminProductDBHelper.DISCOUNT));
		cart.setCurrentPrice();

	}
}
