package user;

import java.sql.*;

public class MBD_Signup {
	// DB연결을위한 커넥션, 현재상태 객체 private으로 선언
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;

	// User클래스에서 입력받은 값을 불러와서 DB에 저장하는 메소드
	public void signUp(String SG_ID, String SG_PW, String SG_NAME, String SG_BIRTH, String SG_GENDER, String SG_EMAIL,
			String SG_PHONE, String SG_PRIVACY, String SG_ADAGREE) {
		try {
			String sql = "insert into mbd_user values(?,?,?,?,?,?,?,?,?)";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, SG_ID);
			pstmt.setString(2, SG_PW);
			pstmt.setString(3, SG_NAME);
			pstmt.setString(4, SG_BIRTH);
			pstmt.setString(5, SG_GENDER);
			pstmt.setString(6, SG_EMAIL);
			pstmt.setString(7, SG_PHONE);
			pstmt.setString(8, SG_PRIVACY);
			pstmt.setString(9, SG_ADAGREE);
			pstmt.executeUpdate(); // insert문이라 executeUpdate사용

		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}

	}
}
