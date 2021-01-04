package project;

import java.util.*;

public class LangExam {
	
	Scanner sc = new Scanner(System.in);
	
	public LangExam() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.토익\n2.토스\n3.오픽\n4.종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("토익");
				break;
			case 2:
				System.out.println("토스");
				break;
			case 3:
				System.out.println("오픽");
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
