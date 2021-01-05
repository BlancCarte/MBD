package user;

import java.sql.*;
import java.util.*;

public class MBD_Login {
	Scanner sc = new Scanner(System.in);
	private static Connection conn;
	private static PreparedStatement pstmt;

	//로그인 아이디 체크 메소드
	void idCheck() {
		System.out.println("ID : ");
		String USER_ID = sc.next();

		ResultSet rs = null;

		try {
			String sql = "select ID, PW from mbd_user where ID=?";
			DAO dao = new DAO(); // DAO클래스에서 DB연결을 위한 dao객체 생성
			conn = dao.getConnection(); // DAO클래스에 있는 getConnection 메소드 호출해서 conn에 저장(conn이 private이기 때문에 메소드로 접근)
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, USER_ID); // select문 ?에 USER_ID를 넣어주고 쿼리보냄
			rs = pstmt.executeQuery(); // 쿼리받은 값을 rs애 저장

			if (rs.next()) {
				String DB_ID = rs.getString(1); // ID를 DB_ID에 저장
				String DB_PW = rs.getString(2); // PW를 DB_PW에 저장

				if (USER_ID.equals(DB_ID)) // 입력받은 ID랑 DB에 있는 ID랑 같을 때
				{
					System.out.println("PW : ");
					String USER_PW = sc.next();
					
					// 입력받은 PW랑 DB에 있는 PW랑 같을 때
					if (USER_PW.equals(DB_PW)) 
					{
						System.out.println("로그인 성공");
					} 
					// 입력받은 PW랑 DB에 있는 PW랑 같을 때
					else if (!USER_PW.equals(DB_PW)) {
						System.out.println("비밀번호가 틀립니다.");
					}
				}

			} 			
			// 입력받은 ID랑 DB에 있는 ID랑 다를 때
			else {
				System.out.println("아이디가 존재하지않습니다. 회원가입을 진행해주세요");
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
