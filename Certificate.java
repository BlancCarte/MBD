package project;

import java.sql.Connection;
import java.util.*;

public class Certificate {
	Scanner sc = new Scanner(System.in);

	public Certificate() {}

	void run() {
		
		Connection conn = DAO.getInstance().getConnection();
		
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.전공관련 자격증\n2.취업관련 자격증\n3.종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("전공관련 자격증");
				Major mj = new Major();
				mj.run();
				break;
			case 2:
				System.out.println("취업관련 자격증");
				Minor mi = new Minor();
				mi.run();
				break;
			case 3:
				System.out.println("-----시스템 종료-----");
				return;
			default:
				System.out.println("다시 입력하세요 !");

			}
		}
	}

}