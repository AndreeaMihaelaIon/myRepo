package com.andreea.utils;

import java.sql.*;

public class DBUtils {

	private static Connection conexiune;
	private static Statement statement;
	private static PreparedStatement preparedStatement;

	public static Connection getConnection() {

		try {
			conexiune = DriverManager.getConnection("jdbc:mysql://127.0.0.1/magazin_online", "root", "andreea");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conexiune;
	}
}
