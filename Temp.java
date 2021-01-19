package project;

import java.util.Scanner;

public class Temp {
	Scanner sc = new Scanner(System.in);
	
	public Temp() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.정보처리기사\n2.SQLD\n3.KJSJ\n4.이전 메뉴\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("정보처리기사"); //국가관련, 민간관련, 둘의 차이점
				Certificate ct = new Certificate();
				ct.run();
				break;
			case 2:
				System.out.println("SQLD");
				break;
			case 3:
				System.out.println("KJSJ");
				break;
			case 4:
				return;
			default:
				System.out.println("다시 입력하세요 !");

			}
		}
	}
}
