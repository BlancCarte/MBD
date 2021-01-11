package user;

import java.util.*;

public class Find {
	Scanner sc = new Scanner(System.in);	
	MBD_Find fin = new MBD_Find();	
	int select; // 스위치-케이스문 입력 변수
	
	void run() {
		System.out.println("\n 1.아이디 찾기 \n 2.비밀번호 찾기 \n 3.이전메뉴\n");
		select = sc.nextInt();
		switch (select) {
		case 1:
			fin.findID(); 
			return;

		case 2:
			fin.findPW();
			return;

		case 3:
			return;
			
		default:
			System.out.println("다시 입력하세요!");

		}

	}	
}
