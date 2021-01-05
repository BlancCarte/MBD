package user;

import java.util.*;

public class Login {
	Scanner sc = new Scanner(System.in);
	int select;	

	void run() {
		while (true) {
			System.out.println("\n 1.로그인 \n 2.회원가입\n 3.종료\n");
			select = sc.nextInt();
			switch (select) {
			case 1:
				MBD_Login mbd_login = new MBD_Login();
				mbd_login.idCheck(); // MBD_Login에 있는 id체크 로그인 메소드 불러옴
				break;

			case 2: //
				System.out.println("회원가입");
				MBD_Signup sig = new MBD_Signup(); // MBD_SignUp에 있는 
				sig.signUpCheck();
				break;

			case 3:
				System.out.println("종료");
				sc.close();
				return;
			}
		}
	}
}
