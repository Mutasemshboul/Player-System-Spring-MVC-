package com.spring.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MainApp {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		String us = "root";
		String pa = "";
		String jdbcUrl = "jdbc:mysql://localhost:3306/player?useSSL=false&ampserverTimezone=UTC";
		String driver = "com.mysql.cj.jdbc.Driver";
		Connection connection = DriverManager.getConnection(jdbcUrl,us,pa);
		
		try {
			Class.forName(driver);
			System.out.println("Sucsess");
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("FAil");
		}finally {
			connection.close();
		}

	}

}
