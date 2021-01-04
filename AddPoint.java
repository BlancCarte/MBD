package project;

import java.util.*;

public class AddPoint {
	Scanner sc = new Scanner(System.in);
	
	public AddPoint() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.한국사\n2.군복무\n3.종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("한국사");
				break;
			case 2:
				System.out.println("군복무");
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
