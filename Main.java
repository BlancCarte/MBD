package project;

import java.util.*;

public class Main {
	public static void main(String[] args) {
		
		DAO dao = DAO.getInstance(); // Connection
		dao.run();
		App app = new App();
		app.run();
	}
}

class App{

	Scanner sc;
	
	public App() {
		sc = new Scanner(System.in);
	}

	void run() {

		while(true) {

			int select = 0;

			System.out.println();
			System.out.println("\n\n1.로그인 및 회원가입\n2.학과 선택\n3.종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {
			case 1:
				System.out.println("로그인 및 회원가입");
				Login log = new Login();
				log.run();
				break;
			case 2:
				System.out.println("학과 선택");
				Major mj = new Major();
				mj.run();
				break;
			case 3:
				System.out.println("-----시스템 종료-----");
				return;
			default:
				System.out.println("다시 입력하세요!");

			}
		}
	}
}
