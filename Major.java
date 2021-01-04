package project;

import java.util.*;

public class Major {
	Scanner sc = new Scanner(System.in);
	
	public Major() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.컴퓨터공학과\n2.기계공학과\n3.경영학과\n4.종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("컴퓨터공학과");
				Jobs j = new Jobs();
				j.run();
				break;
			case 2:
				System.out.println("기계공학과");
				break;
			case 3:
				System.out.println("경영학과");
				break;
			case 4:
				System.out.println("-----시스템 종료-----");
				return;
			default:
				System.out.println("다시 입력하세요 !");

			}
		}
	}
}
