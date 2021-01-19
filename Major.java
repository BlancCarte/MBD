package project;

import java.sql.Connection;
import java.util.*;

public class Major {
	
	Scanner sc = new Scanner(System.in);
	
	public Major() {}

	void run() {
		
		Connection conn = DAO.getInstance().getConnection();
		
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.컴퓨터공학과\n2.경영학과\n3.기계공학과\n4.이전 메뉴\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("컴퓨터공학과");
				Material mtl = new Material();
				mtl.run();
				break;
			case 2:
				System.out.println("경영학과");
				break;
			case 3:
				System.out.println("기계공학과");
				break;
			case 4:
				return;
			default:
				System.out.println("다시 입력하세요 !");

			}
		}
	}
}
