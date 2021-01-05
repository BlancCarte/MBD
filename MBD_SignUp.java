package user;

import java.sql.*;
import java.util.*;
import java.util.regex.*;

public class MBD_SignUp {
	Scanner sc = new Scanner(System.in);
	USER USER = new USER();
	private static Connection conn;
	private static PreparedStatement pstmt;

	// 객체, 해쉬맵, 리스트(크기가 정해지지 않음), 배열(크기가 정해짐)
	// String[] str = String[10];
	// List<Object> list = new List<>(); 10 100 1000
	// HashMap<Key, Value> map = new HashMap<>(); key : x // value : 10 x --> 10

	void SIGN_UP() { // signUp()
		// create class
		String SG_ID;
		String DB_ID;
		String SG_PW;
		String SG_NAME;
		String SG_BIRTH;
		String SG_GENDER;
		String SG_EMAIL;
		String SG_PHONE;

		while (true) {
			System.out.println("아이디 : ");
			SG_ID = sc.next();
			ResultSet rs = null;

			try {
				String sql = "select ID from mbd_user where ID=?";
				DAO dao = new DAO();
				conn = dao.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, SG_ID);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					DB_ID = rs.getString(1);
					if (SG_ID.equals(DB_ID)) {
						System.out.println("중복된 아이디입니다.");
						continue;

					}
				} else {
					while (true) {
						System.out.println("비밀번호 : ");
						sc.nextLine();
						SG_PW = sc.nextLine();
						String pwPattern = "^(?=.*\\d)(?=.*[~`!@#$%\\^&*()-])(?=.*[a-z])(?=.*[A-Z]).{9,12}$";
						Matcher matcher = Pattern.compile(pwPattern).matcher(SG_PW);
						pwPattern = "(.)\\1\\1\\1";
						Matcher matcher2 = Pattern.compile(pwPattern).matcher(SG_PW);

						if (!matcher.matches()) {
							System.out.println("비밀번호는 영문(대소문자 구분), 숫자, 특수문자 조합으로 9~12자리를 입력해주세요");
							continue;

						}

						else if (matcher2.find()) {
							System.out.println("비밀번호에 같은 문자가 3회 반복됩니다.");
							continue;

						}

						else if (SG_PW.contains(SG_ID)) {
							System.out.println("아이디와 비밀번호가 중복됩니다.");
							continue;
						}

						else if (SG_PW.contains(" ")) {
							System.out.println("비밀번호에 공백이 있습니다.");
							continue;

						} else {

							System.out.println("이름 : ");
							SG_NAME = sc.next();

							System.out.println("생년월일(yyyy-mm-dd) : ");
							SG_BIRTH = sc.next();

							while (true) {
								System.out.println("성별(남 or 여) : ");
								SG_GENDER = sc.next();
								if (!(SG_GENDER.equals("남") || SG_GENDER.equals("여"))) {
									System.out.println("성별은 '남'또는 '여'로 입력해주세요.");
									continue; // 남여만
								} else {
									break;
								}
							}

							while (true) {
								System.out.println("이메일 : ");
								SG_EMAIL = sc.next();
								String EmailPattern = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
								Matcher matcher3 = Pattern.compile(EmailPattern).matcher(SG_EMAIL);
								if (!matcher3.matches()) {
									System.out.println("이메일 형식이 아닙니다.");
									continue;
								} else
									break;

							}

							// %%%@%%%.%%% 형태만
							while (true) {
								System.out.println("휴대전화 번호 : ");
								SG_PHONE = sc.next();
								String Phonepattern = "^01(?:0|1|[6-9])[.-]?(\\d{3}|\\d{4})[.-]?(\\d{4})$";
								Matcher matcher4 = Pattern.compile(Phonepattern).matcher(SG_PHONE);
								if (!matcher4.matches()) {
									System.out.println("핸드폰 번호 형식이 아닙니다.(010, 011, 016, 017, 018, 019)");
									continue;
								} else
									break;
							}

							// @@@-@@@-@@@ 형태만

							USER.setUSER_ID(SG_ID);
							USER.setUSER_PW(SG_PW);
							USER.setUSER_NAME(SG_NAME);
							USER.setUSER_BIRTH(SG_BIRTH);
							USER.setUSER_GENDER(SG_GENDER);
							USER.setUSER_EMAIL(SG_EMAIL);
							USER.setUSER_PHONE(SG_PHONE);
							run();

						}
						break;
					}
				}
				break;
			}

			catch (SQLException ex) {
				System.out.println("LOADING 실패");
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
			}
			break;
		}

	}

	void run() {
		// load user object

		try {

			String sql = "insert into mbd_user values(?,?,?,?,?,?,?)";
			DAO dao = new DAO();
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			String SG_ID = USER.getUSER_ID();
			String SG_PW = USER.getUSER_PW();
			String SG_NAME = USER.getUSER_NAME();
			String SG_BIRTH = USER.getUSER_BIRTH();
			String SG_GENDER = USER.getUSER_GENDER();
			String SG_EMAIL = USER.getUSER_EMAIL();
			String SG_PHONE = USER.getUSER_PHONE();
			pstmt.setString(1, SG_ID);
			pstmt.setString(2, SG_PW);
			pstmt.setString(3, SG_NAME);
			pstmt.setString(4, SG_BIRTH);
			pstmt.setString(5, SG_GENDER);
			pstmt.setString(6, SG_EMAIL);
			pstmt.setString(7, SG_PHONE);
			pstmt.executeUpdate();

		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}

		finally {

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}

	}
}
