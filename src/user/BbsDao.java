package user;

import java.sql.*;
import java.util.*;


public class BbsDao {
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	
	public BbsDao() {
		conn = dao.getConnection();
	}
	
	public String getDate() {	
		ResultSet rs = null;
		String sql = "select now()"; // 현재 시간 선택
		try {				
//			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return ""; //데이터베이스 오류
	}
	
	//게시글 번호 부여 메소드
		public int getNext() {
			ResultSet rs = null;	
			String sql = "select B_NUMBER from mbd_bbs order by B_NUMBER desc"; // 내림차순 -> 맨위에 가장 최신 글이 올라옴
			try {
//				conn = dao.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					System.out.println(rs.getInt(1));
					return rs.getInt(1); //0부터이기때문에 +1
				}
				return 1; //첫 번째 게시물
			}catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			return -1; //데이터베이스 오류
		}
		
		//글쓰기 메소드
		public int write(String B_TITLE, String B_CONTENT) {		
			String sql = "insert into mbd_bbs values(?, ?, ?, ?, ?)";
			try {
//				conn = dao.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, getNext());
				pstmt.setString(2, B_TITLE);
				pstmt.setString(3, getDate());
				pstmt.setString(4, B_CONTENT);
				pstmt.setInt(5, 1); //글의 유효번호
				return pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return -1; //데이터베이스 오류
		}
		
		//게시글 리스트 메소드
		public ArrayList<Bbs> getList(int pageNumber){	
			ResultSet rs = null;
			String sql = "select * from mbd_bbs where B_NUMBER < ? and B_AVAILABLE = 1 order by B_NUMBER desc limit 10";
			ArrayList<Bbs> list = new ArrayList<Bbs>();
			try {
//				conn = dao.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Bbs bbs = new Bbs();
					bbs.setNUMBER(rs.getInt(1));
					System.out.println("NUMBER " + rs.getString(1));
//					System.out.println("TITLE: " + rs.getInt(1));
					bbs.setB_TITLE(rs.getString(2));					
					bbs.setB_DATE(rs.getString(3));
					bbs.setB_CONTENT(rs.getString(4));
					bbs.setB_AVAILABLE(rs.getInt(5));
					list.add(bbs);
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			return list;
		}
		
		//페이징 처리 메소드
		public boolean nextPage(int pageNumber) {
			ResultSet rs = null;
			String sql = "select * from mbd_bbs where B_NUMBER < ? and B_AVAILABLE = 1";
			try {
//				conn = dao.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return true;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			return false;
		}
		
		//게시글 보는 메소드
		public Bbs getBbs(int B_NUMBER) {		
			ResultSet rs = null;
			String sql = "select * from mbd_bbs where B_NUMBER = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, B_NUMBER);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					Bbs bbs = new Bbs();
					bbs.setNUMBER(rs.getInt(1));
					bbs.setB_TITLE(rs.getString(2));
					bbs.setB_DATE(rs.getString(3));
					bbs.setB_CONTENT(rs.getString(4));
					bbs.setB_AVAILABLE(rs.getInt(5));
					return bbs;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			return null;
		}
	    
	}
