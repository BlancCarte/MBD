package user;

import java.sql.*;
public class OverlapID {	
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	// ID찾기 입력받은 이름과 ID

	private String DB_ID;
	public int overlapID(String ID) {

		ResultSet rs = null;
		int result = -1;
		try {
			String sql = "select MAX(ID) from mbd_user where ID=?"; // select 뒤에 MAX()를 쓰면 WHERE 조건
																							// 절에 해당하는 값이 없을 때 null을 리턴
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);			
			rs = pstmt.executeQuery();

			if (rs.next()) {
				DB_ID = rs.getString(1);
				if (DB_ID != null) {
					result = 1;// 중복된 아이디가 있을때
					
				} else 
					result = 0;// 중복된 아이디가 없을때
				}
			
		} catch (SQLException ex) {
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
		return result;// 그 이외의 경우
	}

	
}
