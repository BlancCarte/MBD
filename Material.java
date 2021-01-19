package project;

import java.util.*;

public class Material {
	Scanner sc = new Scanner(System.in);
	
	public Material() {}
	
	void run() {
		while(true) {
			int select = 0;

			System.out.println();
			System.out.println("\n\n1.자격증\n2.자료실\n3.이전 메뉴\n\n");
			System.out.println("Select Number !!");
			System.out.print(">>> ");
			select = sc.nextInt();

			switch(select) {

			case 1:
				System.out.println("자격증"); //국가관련, 민간관련, 둘의 차이점
				Temp tmp = new Temp();
				tmp.run();
				break;
			case 2:
				System.out.println("자료실");
				break;
			case 3:
				return;
			default:
				System.out.println("다시 입력하세요 !");

			}
		}
	}
}
