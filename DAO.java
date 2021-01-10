package user;

import java.sql.*;

public class DAO {

	private static Connection conn;
	private static DAO instance = new DAO();

	public static DAO getInstance() {
		if (instance == null)
			instance = new DAO();
		return instance;
	}

	// 다른 클래스에서 conn참조할 수 있게 get메소드 생성
	Connection getConnection() {
		return conn;
	}

	// DAO 객체 생성후 run메소드 불러와서 실행
	public DAO() {
		run();
	}

	// DB연결 메소드 user, pass는 각자 껄로 변경해야함
	void run() {
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
}
