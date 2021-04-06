package user;

import java.sql.*;

public class MBD_Find {	
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	// ID찾기 입력받은 이름과 ID

	private String DB_ID;
	private String DB_PW;
	// DB에서 받아온 ID와 비밀번호

	public String findID(String NAME, String PHONE_NUMBER) {

		ResultSet rs = null;
		try {
			String sql = "select MAX(ID) from mbd_user where NAME=? and PHONE_NUMBER=?"; // select 뒤에 MAX()를 쓰면 WHERE 조건
																							// 절에 해당하는 값이 없을 때 null을 리턴
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, NAME);
			pstmt.setString(2, PHONE_NUMBER);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				DB_ID = rs.getString(1);
				if (DB_ID != null) {
					return DB_ID;// 아이디가있을때
					
				} else if (DB_ID == null) {
					return "1";
				}
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
		return "-1";// 그 이외의 경우
	}

	public String findPW(String NAME, String PHONE_NUMBER, String ID) {
		ResultSet rs = null;
		
		try {
			String sql = "select MAX(PW) from mbd_user where NAME=? and PHONE_NUMBER=? and ID=?"; 
			// select 뒤에 MAX()를 쓰면 WHERE 조건 절에 해당하는 값이 없을 때 null을 리턴
																								
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, NAME);
			pstmt.setString(2, PHONE_NUMBER);
			pstmt.setString(3, ID);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				DB_PW = rs.getString(1);
				if (DB_PW != null) {
					return DB_PW;
				} else if (DB_PW == null) {
					return "1";
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
		return "-1";// 그 이외의 경우
	}
}
