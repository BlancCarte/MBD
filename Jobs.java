package project;

import java.util.*;

public class Jobs {
	Scanner sc = new Scanner(System.in);
	
	public Jobs() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.보안 전문가\n2.개발자\n3.정보시스템운영자\n4종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("보안 전문가");
				break;
			case 2:
				System.out.println("개발자");
				break;
			case 3:
				System.out.println("정보시스템운영자");
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
