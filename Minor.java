package project;

import java.util.*;

public class Minor {
	Scanner sc = new Scanner(System.in);
	
	public Minor() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.언어관련\n2.실무관련\n3.가산점\n4.종료\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("언어관련");
				LangExam le = new LangExam();
				le.run();
				break;
			case 2:
				System.out.println("실무관련");
				Working w = new Working();
				w.run();
				break;
			case 3:
				System.out.println("가산점");
				AddPoint ap = new AddPoint();
				ap.run();
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
