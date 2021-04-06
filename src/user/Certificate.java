package user;

import java.sql.*;
import java.util.ArrayList;

public class Certificate {
	private DAO dao;
	private static Connection conn;
	private static PreparedStatement pstmt;
	
	//로그인 아이디 체크 메소드
	public ArrayList<String> c_DB(String ID) {
		dao = DAO.getInstance();
		ResultSet rs = null;
		
		//String a[] = new String[5];
		ArrayList<String> list = new ArrayList<String>();

		try {
			String sql = "select C_NAME, C_CONDITION, C_STANDARD, C_RATE, C_DATE from mbd_certificate where C_NAME=?";// where -> 조건
			conn = dao.getConnection(); // DAO클래스에 있는 getConnection 메소드 호출해서 conn에 저장(conn이 private이기 때문에 메소드로 접근)
			pstmt = conn.prepareStatement(sql); // pstmt 캐시 o // stmt 캐시 x 아이디 저장같은 느낌
			//pstmt.setString(1, test);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery(); // 쿼리받은 값을 rs에 저장 //데이터베이스에 쿼리를 날린다 -> 요청한다.
					
			if (rs.next()) { //한줄씩 받겠다.
				for(int i = 1; i <= 5; i++) {
					list.add(rs.getString(i));
				// a[i] = rs.getString(i);
	
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
		return list;
		
		}
	}
