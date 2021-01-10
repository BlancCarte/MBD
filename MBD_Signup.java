package user;

import java.sql.*;
import java.util.*;
import java.util.regex.*;

public class MBD_Signup {
	Scanner sc = new Scanner(System.in);
	// 받은 회원정보 USER클래스에 저장하기위해 User 객체생성
	User user = new User();
	// DB연결을위한 커넥션, 현재상태 객체 private으로 선언
	private static Connection conn;
	private static PreparedStatement pstmt;
	String SG_ID;
	String DB_ID;
	String SG_PW;
	String SG_NAME;
	String SG_BIRTH;
	String SG_GENDER;
	String SG_EMAIL;
	String SG_PHONE;

	// 회원가입 체크 메소드
	void signUpCheck() {

		while (true) {
			System.out.println("아이디 : ");
			SG_ID = sc.nextLine(); // Line()			
			ResultSet rs = null;

			try {
				String sql = "select ID from mbd_user where ID=?";
				DAO dao = new DAO(); // DAO클래스에서 DB연결을 위해 dao 객체 생성
				conn = dao.getConnection(); // DAO클래스에 있는 getConnection 메소드 호출해서 conn에 저장(conn이 private이기 때문에 메소드로 접근)
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, SG_ID); // select문 ?에 SG_ID를 넣어주고 쿼리보냄
				rs = pstmt.executeQuery(); // 쿼리받은 값을 rs애 저장
				if (rs.next()) {
					DB_ID = rs.getString(1); // DB_ID에 받은 값 저장 getString(숫자) 숫자는 DB의 속성 값 순서
					if (SG_ID.equals(DB_ID)) { // 회원가입시 입력받은 ID랑 DB상의 ID가 겹칠 때
						System.out.println("중복된 아이디입니다.");
						continue;
					}
				} else {

					while (true) {
						// 비밀번호 패턴
						System.out.println("비밀번호 : ");
						SG_PW = sc.nextLine();						
						String pwPattern1 = "^(?=.*\\d)(?=.*[~`!@#$%\\^&*()-])(?=.*[a-z])(?=.*[A-Z]).{8,12}$"; // 대문자,소문자,숫자,특수문자 조합으로 8~12자리 패턴																												
						String pwPattern2 = "(.)\\1\\1\\1"; // 같은 문자 3회 반복 패턴

						if (patternMatch(pwPattern1, SG_PW)) {
							System.out.println("비밀번호는 영문(대소문자 구분), 숫자, 특수문자 조합으로 8~12자리를 입력해주세요");							
							continue;

						}

						else if (patternFind(pwPattern2, SG_PW)) {
							System.out.println("비밀번호에 같은 문자가 3회 반복됩니다.");							
							continue;

						}

						else if (SG_PW.contains(SG_ID)) { // 비밀번호에 아이디가 포함될 때
							System.out.println("아이디와 비밀번호가 중복됩니다.");
							continue;
						}

						else if (SG_PW.contains(" ")) { // 비밀번호에 공백이 포함될 때
							System.out.println("비밀번호에 공백이 있습니다.");
							continue;

						}
						// 비밀번호패턴에 위배되지 않을 때
						else {

							System.out.println("이름 : ");
							SG_NAME = sc.next();

							System.out.println("생년월일(yyyy-mm-dd) : ");
							SG_BIRTH = sc.next();

							while (true) {
								// 성별 패턴
								System.out.println("성별(남 or 여) : ");
								SG_GENDER = sc.next();
								if (!(SG_GENDER.equals("남") || SG_GENDER.equals("여"))) // 성별에 남, 여가 아닌 다른 값이 입력되었을 때
								{
									System.out.println("성별은 '남'또는 '여'로 입력해주세요.");
									continue;
								} else {
									break;
								}
							}

							while (true) {
								// 이메일 %%%@%%%.%%% 형태만 입력받게 패턴설정
								System.out.println("이메일 : ");
								SG_EMAIL = sc.next();
								String EmailPattern = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
								if (patternMatch(EmailPattern, SG_EMAIL)) {
									System.out.println("이메일 형식이 아닙니다.");
									continue;
								} else
									break;

							}

							while (true) {
								// @@@-@@@-@@@ 형태만 입력받게 패턴설정
								System.out.println("휴대전화 번호(-제외하고 입력해주세요) : ");
								SG_PHONE = sc.next();
								String Phonepattern = "^01(?:0|1|[6-9])?(\\d{3}|\\d{4})?(\\d{4})$";
								if (patternMatch(Phonepattern, SG_PHONE)) {
									System.out.println("핸드폰 번호 형식이 아닙니다.(010, 011, 016, 017, 018, 019)");
									continue;
								} else
									break;
							}

							// User 클래스에 입력받은 회원정보 저장
							user.setUserId(SG_ID);
							user.setUserPw(SG_PW);
							user.setUserName(SG_NAME);
							user.setUserBirth(SG_BIRTH);
							user.setUserGender(SG_GENDER);
							user.setUserEmail(SG_EMAIL);
							user.setUserPhone(SG_PHONE);
							run(); // run 메소드 불러와서 실행

						}
						break;
					}
				}
				break;
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
			break;
		}

	}

	// User클래스에서 입력받은 값을 불러와서 DB에 저장하는 메소드
	void run() {
		try {

			String sql = "insert into mbd_user values(?,?,?,?,?,?,?)";
			DAO dao = new DAO();
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			String SG_ID = user.getUserId();
			String SG_PW = user.getUserPw();
			String SG_NAME = user.getUserName();
			String SG_BIRTH = user.getUserBirth();
			String SG_GENDER = user.getUserGender();
			String SG_EMAIL = user.getUserEmail();
			String SG_PHONE = user.getUserPhone();
			pstmt.setString(1, SG_ID);
			pstmt.setString(2, SG_PW);
			pstmt.setString(3, SG_NAME);
			pstmt.setString(4, SG_BIRTH);
			pstmt.setString(5, SG_GENDER);
			pstmt.setString(6, SG_EMAIL);
			pstmt.setString(7, SG_PHONE);
			pstmt.executeUpdate(); // insert문이라 executeUpdate사용

		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}

	}

	// paterMatch boolean 메소드
	boolean patternMatch(String pattern, String str) {
		Matcher matcher = Pattern.compile(pattern).matcher(str);

		if (!matcher.matches()) {
			return true;
		}

		return false;
	}

	// paterFind boolean 메소드
	boolean patternFind(String pattern, String str) {
		Matcher matcher = Pattern.compile(pattern).matcher(str);

		if (matcher.find()) {
			return true;
		}

		return false;
	}
}
