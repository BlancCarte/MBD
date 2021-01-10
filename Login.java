package user;

import java.util.*;

public class Login {
	Scanner sc = new Scanner(System.in);
	int select;	

	void run() {
		while (true) {
			System.out.println("\n 1.로그인 \n 2.회원가입\n 3.아이디, 비밀번호찾기\n 4.이전 메뉴\n");
			select = sc.nextInt();
			switch (select) {
			case 1:
				MBD_Login mbd_login = new MBD_Login();
				mbd_login.idCheck(); // MBD_Login에 있는 id체크 로그인 메소드 불러옴
				return;

			case 2: //
				System.out.println("회원가입");
				MBD_Signup sig = new MBD_Signup(); // MBD_SignUp에 있는 
				sig.signUpCheck();
				break;

			case 3:
				System.out.println("아이디, 비밀번호 찾기");				
				Find fin = new Find();
				fin.run();
				break;
				
			case 4:				
				return;
				
			default:
				System.out.println("다시 입력하세요!");

			}
		}
	}
}
