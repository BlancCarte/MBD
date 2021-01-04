package project;

import java.util.*;

public class Working {
	Scanner sc = new Scanner(System.in);
	
	public Working() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.컴활\n2.모스\n3.종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("컴활");
				break;
			case 2:
				System.out.println("모스");
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
