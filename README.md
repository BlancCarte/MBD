# MBD
## 목차소개
  1. 소개
  2. 기획서
     + 목적 및 필요성
       + 문제 인식
       + 기획 의도
       + 분석
       + 차별화요소
     + 개요
       + 프로젝트 소개
       + 주요기능
       + 적용기술       
       + 독창성
     + 수행방법 및 일정
       + 수행방법
       + 추진일정
       + 역할분담
     + 기대효과 및 활용분야
     + 비즈니스 모델
  3. 개발서
     + 성빈이
     + 구글
     + 자바 교재
  4. 각 클래스별 코드
     + MAIN
     + DAO
     + MBD_Login
  5. 기타
     + 일정관리
     + 추후목표
     
## 1. 소개
MBD(밑바닥)프로젝트로서 밑바닥 3인의 자바향상 실력을 위한 동기부여 프로젝트로서 취업정보 및 경시대회정보 관리 프로그램을 제작하기로 함.

## 2. 기획서
  + ### 목적 및 필요성
    + #### 문제 인식
      2021년도 기준 3학년에 올라가는 3명이지만 자바 실력은 바닥을 치고있다.
    + #### 기획 의도
      2020년 겨울방학을 이용하여 프로젝트를 통한 자바실력 향상 및 공부 및 프로젝트 진행 경험 쌓기
    + #### 분석
      이클립스를 사용하여 취업정보관련 로그인 및 정보관리를 MariaDB를 연동하여 구현 후 
      
      추후 JSP, JavaScript, HTML, Android-Studio 등을 이용하여 FrontEnd 구현 예정
    + #### 차별화요소
      취준생 즉 졸업예정자가 전공분야에 관련해서 실무내용, 필요 자격증, 자소서 양식, 전공분야 졸업자들의 OutPut, 경진대회 정보 등을 
      한번에 얻을 수 있는 방법이 현재 느끼기에 전무함, 시장에 나와있는 어플이나 사이트들도 조사결과 전무함
      
      또한 현재는 컴퓨터공학과 한정으로 구현하지만, 추후 많은 과와 커뮤니티 기능을 통한 사용자들의 상호작용으로 방대한 양의 데이터를
      얻어 차별성을 가질 수 있다고 생각함
  + ### 개요
    + #### 프로젝트 소개
      취준생들을 위한 취업정보 및 경진대회 정보를 한 곳에서 얻을 수 있도록 구현하도록 함
    + #### 주요기능
      1. MariaDB 연동을 이용한 로그인 및 회원가입 구현
      2. MVC모델을 기반으로 구현
      3. 클래스별로 각 항목을 나누어 구현
      4. 개인정보는 Private으로 설정하여 보안성 강화
    + #### 적용기술
      1. 이클립스-MariaDB 연동을 통한 이클립스상에서 쿼리수정 가능
      2. __추후 남은인원이 작성할것__
    + #### 독창성
      1. __떠오르지않음 나중에 수정하기__
   + ### 수행 방법 및 일정
     + #### 수행방법
       맡은 부분별로 일주일동안 할당량을 정해놓은 후, 일주일에 한번씩 미팅을 가져 자기가 짠 코드부분 발표 및 설명, 
       
       추후 진행방향 회의
     
       성빈디렉터 총괄
     + #### 추진일정
       2020.12.26 프로젝트 시작
     
       2020.12.27 MAIN클래스 작성완료(정재헌)
     
       2020.12.28 MariaDB연동완료 및 MOD_Login Class 작성완료(정유성)
     
       2021.12.29 GitHub 오픈, README 업데이트(정유성)
     
       __2020.01.03 1차 진행상황 발표 및 회의(예정)__
     + #### 역할분담
       정재헌 : Main Class, 자격증 담당
     
       정유성 : 로그인 및 회원가입 구현, DB연동
     
       신범석 : 아웃풋 구현
     
## 3. 개발서
  + ### 성빈이
    총괄 및 선생님이자 또 하나의 아버지
  + ### 구글
    구글=구글
  + ### 자바 교재
    기본 지식 획득
    
## 4. 각 클래스별 코드
  + ### MAIN
```
  package user;

import java.util.*;

public class Main {
   public static void main(String[] args) {
      
      DAO dao = new DAO(); // Connection
      
      App app = new App();
      app.run();
   }
}

class App{

   Scanner sc;
   
   public App() {
      sc = new Scanner(System.in);
   }

   void run() {

      while(true) {

         int select = 0;

         System.out.println();
         System.out.println("\n\n1.로그인 및 회원가입\n2.자격증\n3.자료실\n4.종료\n\n");
         System.out.println("Select Number !!");
         System.out.print(">>> ");
         select = sc.nextInt();

         switch(select) {
         case 1:
            System.out.println("로그인 및 회원가입");
            MBD_Login log = new MBD_Login();
            log.run();
            break;
         case 2:
            System.out.println("자격증");
          
            break;
         case 3:
            System.out.println("자료실");
            break;
         case 4:
            System.out.println("-----시스템 종료-----");
            return;
         default:
            System.out.println("다시 입력하세요!");

         }
      }
   }
}
```  
  + ### DAO
```
package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {

   private static Connection conn;   
   private static DAO instance = new DAO();
   
   public static DAO getInstance() {
      return instance;
   }   
 
public DAO() {
      run();
   }
   
   static void run() {
      try {
         Class.forName("org.mariadb.jdbc.Driver");
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      }
      String url = "jdbc:mariadb://localhost:3306/mbd";
      String user = "MBD_TEST";
      String pass = "1234";
      try {
         conn = DriverManager.getConnection(url, user, pass);
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }

   
   Connection getConnection() {
      return conn;
   }

}
```
  + ## MBD_Login
```
package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class MBD_Login {
	Scanner sc = new Scanner(System.in);
	private static Connection conn;
	private static PreparedStatement pstmt;

	void run() {
		int select;
		System.out.println("\n 1.로그인 \n 2.회원가입\n 3.종료\n");
		select = sc.nextInt();
		switch (select) {
		case 1:
			System.out.println("ID : ");
			String USER_ID = sc.next();

			ResultSet rs = null;

			try {
				String sql = "select ID, PW from mbd_user where ID=?";
				DAO dao = new DAO();
				conn = dao.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, USER_ID);
				rs = pstmt.executeQuery();

				if (rs.next()) {
					String DB_ID = rs.getString(1);
					String DB_PW = rs.getString(2);

					if (USER_ID.equals(DB_ID)) {
						System.out.println("PW : ");
						String USER_PW = sc.next();
						if (USER_PW.equals(DB_PW)) {
							System.out.println("로그인 성공");
						} else if (!USER_PW.equals(DB_PW)) {
							System.out.println("비밀번호가 틀립니다.");
						}
					} /*else {
						System.out.println("아이디가 틀립니다.");
					}*/

				} else {
					System.out.println("아이디가 존재하지않습니다.");// 회원가입으로 진행하기
				}
			} 
			
			catch (SQLException ex) {
				System.out.println("LOADING 실패");
				System.out.println("Error: " + ex.getMessage());
			} 
			
			finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			break;

		case 2:
			System.out.println("회원가입");
			MBD_SignUp sig = new MBD_SignUp();
			sig.run();
			break;

		case 3:
			System.out.println("종료");
			return;
		}
	}
}
```

## 5. 기타
  + ### 일정관리
    주 1회 무조건 미팅
  + ### 추후목표
    FrontEnd로 구현 목표, 파이썬 공부
