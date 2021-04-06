package user;

import java.sql.*;

public class MBD_Login {
	private DAO dao = DAO.getInstance(); // DAO클래스에서 DB연결을 위한 dao객체 생성
	private static Connection conn;
	private static PreparedStatement pstmt;

	// 로그인 아이디 체크 메소드
	public int idCheck(String ID, String PW) {

		ResultSet rs = null;

		try {
			String sql = "select PW from mbd_user where ID=?";
			conn = dao.getConnection(); // DAO클래스에 있는 getConnection 메소드 호출해서 conn에 저장(conn이 private이기 때문에 메소드로 접근)
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID); // select문 ?에 USER_ID를 넣어주고 쿼리보냄
			rs = pstmt.executeQuery(); // 쿼리받은 값을 rs애 저장

			if (rs.next()) {
				String DB_PW = rs.getString(1);// PW를 DB_PW에 저장

				if (PW.equals(DB_PW))// 로그인성공
				{
					return 1;
				} else if (!(PW.equals(DB_PW))) // 비밀번호 불일치
				{
					return 0;
				}
			}
		}

		catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}

		// rs랑 pstmt 닫아주기(연거랑 역순으로)
		finally {
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
		}
		return -1; // 입력받은 ID랑 DB에 있는 ID랑 다를 때 > 회원가입진행
	}
}
