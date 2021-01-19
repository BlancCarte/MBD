package project;

import java.sql.*;
import java.util.*;

public class MBD_Find {
	Scanner sc = new Scanner(System.in);
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;	
	private String Find_ID;
	private String Find_Name;
	private String Find_Phone;// ID찾기 입력받은 이름과 ID

	private String DB_ID;
	private String DB_PW;
	// DB에서 받아온 ID와 비밀번호	

	void findID() {
		System.out.println("이름 : ");
		Find_Name = sc.next();
		System.out.println("전화번호 : ");
		Find_Phone = sc.next();

		ResultSet rs = null;
		try {
			String sql = "select MAX(ID) from mbd_user where NAME=? and PHONE_NUMBER=?"; //select 뒤에 MAX()를 쓰면 WHERE 조건 절에 해당하는 값이 없을 때 null을 리턴
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Find_Name);
			pstmt.setString(2, Find_Phone);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				DB_ID = rs.getString(1);
				if (DB_ID != null) {
					System.out.println("아이디 : " + DB_ID);
				} else if (DB_ID == null) {
					System.out.println("이름 또는 전화번호 또는 ID에 해당하는 PW가 없습니다.");
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

	}


	void findPW() {
		System.out.println("이름 : ");
		Find_Name = sc.next();
		System.out.println("전화번호 : ");
		Find_Phone = sc.next();
		System.out.println("ID : ");
		Find_ID = sc.next();

		ResultSet rs = null;
		try {
			String sql = "select MAX(PW) from mbd_user where NAME=? and PHONE_NUMBER=? and ID=?"; //select 뒤에 MAX()를 쓰면 WHERE 조건 절에 해당하는 값이 없을 때 null을 리턴
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Find_Name);
			pstmt.setString(2, Find_Phone);
			pstmt.setString(3, Find_ID);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				DB_PW = rs.getString(1);
				if (DB_PW != null) {
					System.out.println("비밀번호 : " + DB_PW);
				} else if (DB_PW == null) {
					System.out.println("이름 또는 전화번호 또는 ID에 해당하는 PW가 없습니다.");
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
	}
}

