package user;

import java.sql.*;

public class DAO {

	private static Connection conn;
	private static DAO instance = new DAO();

	public static DAO getInstance() {
		if (instance == null)
			instance = new DAO();
		// System.out.println("Load Instance");
		return instance;
	}

	// 다른 클래스에서 conn참조할 수 있게 get메소드 생성
	Connection getConnection() {
		System.out.println("Load Connection");
		return conn;
	}

	// DAO 객체 생성후 run메소드 불러와서 실행
	public DAO() {
		run();
	}

	// DB연결 메소드 user, pass는 각자 껄로 변경해야함
	public void run() {
		try {
			String url = "jdbc:mariadb://localhost:3306/mbd";
			String user = "MBD_TEST";
			String pass = "1234";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {

			e.printStackTrace();
		}

	}
}
