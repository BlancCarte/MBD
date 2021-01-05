/*package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class USER_DAO {
	private static Connection conn;
	private static PreparedStatement pstmt;

	public static void main(String[] args) {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		String url = "jdbc:mariadb://localhost:3306/mbd";
		String user = "MBD_TEST";
		String pass = "1234";
		try {
			conn = DriverManager.getConnection(url, user, pass);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		insert();

		ResultSet rs = null;
		try {
			String sql = "select ? from mbd_user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String DBID = rs.getString(1);			
				String PW = rs.getString(2);
				String name = rs.getString(3);
				String birth = rs.getString(4);
				String gender = rs.getString(5);
				String email = rs.getString(6);
				String phone = rs.getString(7);
				System.out.println("ID = " + ID);
				System.out.println("PW = " + PW);
				System.out.println("NAME = " + name);
				System.out.println("BIRTH = " + birth);
				System.out.println("SEX = " + gender);
				System.out.println("Email = " + email);
				System.out.println("phone = " + phone);

			}
			else {
				// no
			}
		} catch (SQLException ex) {
			System.out.println("Update 실패");
			System.out.println("Error: " + ex.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}

	public static void insert() {
		try {
			String sql = "insert into mbd_user values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "78910");
			pstmt.setString(2, "91011");
			pstmt.setString(3, "정재헌");
			pstmt.setString(4, "1996-11-20");
			pstmt.setString(5, "남");
			pstmt.setString(6, "9789798@naver.com");
			pstmt.setString(7, "46548979");

			pstmt.executeUpdate();

		} catch (SQLException ex) {
			System.out.println("Update 실패");
			System.out.println("Error: " + ex.getMessage());
		}
	}

}
*/
