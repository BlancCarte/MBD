package user;

import java.sql.*;

public class DAO {

	private static Connection conn;
	private static DAO instance = new DAO();

	public static DAO getInstance() {
		return instance;
	}

	public DAO() {
		run();
	}

	static void run() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String url = "jdbc:mariadb://localhost:3306/mbd";
		String user = "MBD_TEST";
		String pass = "1234";
		try {
			conn = DriverManager.getConnection(url, user, pass);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	Connection getConnection() {
		return conn;
	}

}