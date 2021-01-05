package user;

public class mbd_user{
	
	private static mbd_user user = null;
	
	public static mbd_user getInstance() {
		
		if(user == null) {
			user = new mbd_user();
		}
		
		return user;
	}
	
	private String userID;
	private String userPW;
	private String userNAME;
	private String userBirth;
	private String userGENDER;
	private String userEMAIL;
	private String userPHONE_NUMBER;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getUserNAME() {
		return userNAME;
	}
	public void setUserNAME(String userNAME) {
		this.userNAME = userNAME;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserGENDER() {
		return userGENDER;
	}
	public void setUserGENDER(String userGENDER) {
		this.userGENDER = userGENDER;
	}
	public String getUserEMAIL() {
		return userEMAIL;
	}
	public void setUserEMAIL(String userEMAIL) {
		this.userEMAIL = userEMAIL;
	}
	public String getUserPHONE_NUMBER() {
		return userPHONE_NUMBER;
	}
	public void setUserPHONE_NUMBER(String userPHONE_NUMBER) {
		this.userPHONE_NUMBER = userPHONE_NUMBER;
	}
	
	
}
