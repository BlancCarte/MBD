package user;

import java.sql.*;
import java.util.*;

public class MBD_Login {
	Scanner sc = new Scanner(System.in);
	private static Connection conn;
	private static PreparedStatement pstmt;

	void run() {
		int select;
		while (true) {
			System.out.println("\n 1.로그인 \n 2.회원가입\n 3.종료\n");
			select = sc.nextInt();
			switch (select) {
			case 1:
				System.out.println("ID : ");
				String USER_ID = sc.next();

				ResultSet rs = null;

				try {
					String sql = "select ID, PW from mbd_user where ID=?";
					DAO dao = new DAO();
					conn = dao.getConnection();
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, USER_ID);
					rs = pstmt.executeQuery();

					if (rs.next()) {
						String DB_ID = rs.getString(1);
						String DB_PW = rs.getString(2);

						if (USER_ID.equals(DB_ID)) {
							System.out.println("PW : ");
							String USER_PW = sc.next();
							if (USER_PW.equals(DB_PW)) {
								System.out.println("로그인 성공");
							} else if (!USER_PW.equals(DB_PW)) {
								System.out.println("비밀번호가 틀립니다.");
							}
						} /*
							 * else { System.out.println("아이디가 틀립니다."); }
							 */

					} else {
						System.out.println("아이디가 존재하지않습니다.");// 회원가입으로 진행하기
					}
				}

				catch (SQLException ex) {
					System.out.println("LOADING 실패");
					System.out.println("Error: " + ex.getMessage());
				}

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
				break;

			case 2: //
				System.out.println("회원가입");
				MBD_SignUp sig = new MBD_SignUp();
				sig.SIGN_UP();
				break;

			case 3:
				System.out.println("종료");
				sc.close();
				return;
			}
		}
	}
}
