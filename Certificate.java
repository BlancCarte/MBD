package project;

import java.sql.*;
import java.util.*;

public class Certificate {
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;

	private String DB_C_NAME; 
	private String DB_C_CONDITION;
	private String DB_C_STANDARD;
	private Double DB_C_RATE;
	private String DB_C_DATE;
	
	private String select;

	Scanner sc = new Scanner(System.in);

	//로그인 아이디 체크 메소드
	void run() {

		System.out.println("------------------");

		ResultSet rs = null;

		try {
			String sql = "select C_NAME, C_CONDITION, C_STANDARD, C_RATE, C_DATE from mbd_certificate where C_NAME='이름'";// where -> 조건 
			conn = dao.getConnection(); // DAO클래스에 있는 getConnection 메소드 호출해서 conn에 저장(conn이 private이기 때문에 메소드로 접근)
			pstmt = conn.prepareStatement(sql); //pstmt 캐시 stmt 캐시 x 아이디 저장같은 느낌
			rs = pstmt.executeQuery(); // 쿼리받은 값을 rs에 저장 //데이터베이스에 쿼리를 날린다 -> 요청한다.

			if (rs.next()) { //한줄씩 받겠다.
				DB_C_NAME = rs.getString(1); 
				DB_C_CONDITION = rs.getString(2);
				DB_C_STANDARD = rs.getString(3);
				DB_C_RATE = rs.getDouble(4);
				DB_C_DATE = rs.getString(5);
			}
			System.out.println(DB_C_NAME);
			System.out.println(DB_C_CONDITION);
			System.out.println(DB_C_STANDARD);
			System.out.println(DB_C_RATE);
			System.out.println(DB_C_DATE);
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
		
		while(true) {
			System.out.println("\n1.이전 메뉴");
			
			select = sc.next();
			
			if(select.equals("1")) {
				return;
			}
			else{
				System.out.println("다시 입력하세요");
			}
		}
	}
}