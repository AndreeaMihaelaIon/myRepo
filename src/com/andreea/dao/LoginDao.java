package com.andreea.dao;

import java.sql.*;

import com.andreea.utils.DBUtils;

public class LoginDao {

	public static boolean validate(String user, String password) {
		Connection conn = DBUtils.getConnection();
		try {
			PreparedStatement prep = conn.prepareStatement("SELECT username, pass FROM accounts WHERE username = ?");
			prep.setString(1, user);
			ResultSet rs = prep.executeQuery();
			if (rs.next()) {
				if (rs.getString("pass").equals(password)) {
					System.out.println("Valid credentials");
					return true;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
