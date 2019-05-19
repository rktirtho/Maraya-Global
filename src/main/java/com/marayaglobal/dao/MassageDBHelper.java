package com.marayaglobal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.marayaglobal.beans.massage.Massage;

public class MassageDBHelper {
	
	public static String TABLE_NAME = "massage";
	public static String ID = "id";
	public static String NAME = "name";
	public static String EMAIL = "email";
	public static String MASSAGE = "massage";
	public static String TIME = "time";
	
	
	static DatabaseConnector dbConnector = DatabaseConnector.getInstance();
	private static Connection connection = null;
	private static PreparedStatement statement = null;
	private static ResultSet rs = null;
	
	
	
	public static void main(String[] arg) {
		List<Massage> massages = getMassages(0,10);
		for (Massage massage : massages) {
			System.out.println(massage);
		}
		System.out.println(getMassageByid(11));
	}
	
	public static List<Massage> getMassages(){
		List<Massage> massages= new ArrayList<>();
		connection = dbConnector.getConnection();
		
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME);
			rs = statement.executeQuery();
			while (rs.next()) {
				Massage massage = new Massage();
				inputer(rs, massage);
				massages.add(massage);
			}
		} catch (SQLException ex) {
			Logger.getLogger(ex.getMessage());
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
		return massages;
	}
	
	public static List<Massage> getMassages(int start, int end){
		List<Massage> massages= new ArrayList<>();
		connection = dbConnector.getConnection();
		
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME +" order by "+ID+" desc limit "+start+","+end);
			rs = statement.executeQuery();
			while (rs.next()) {
				Massage massage = new Massage();
				inputer(rs, massage);
				massages.add(massage);
			}
		} catch (SQLException ex) {
			Logger.getLogger(ex.getMessage());
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
		return massages;
	}
	
	
	public static Massage getMassageByid(int id){
		Massage massage = new Massage();
		connection = dbConnector.getConnection();
		
		try {
			statement = connection.prepareCall("SELECT * FROM " + TABLE_NAME +" where "+ID+"="+id);
		
			rs = statement.executeQuery();
			while (rs.next()) {
				inputer(rs, massage);
			}
		} catch (SQLException ex) {
			Logger.getLogger(ex.getMessage());
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
		return massage;
	}
	
	private static void inputer(ResultSet rs, Massage massage) throws SQLException {
		massage.setId(rs.getInt(ID));
		massage.setName(rs.getString(NAME));
		massage.setEmail(rs.getString(EMAIL));
		massage.setMassage(rs.getString(MASSAGE));
		massage.setTime(rs.getTimestamp(TIME));
	}

}
