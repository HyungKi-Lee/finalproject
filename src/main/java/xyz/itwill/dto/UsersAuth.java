package xyz.itwill.dto;
/*
이름          널?       유형           
----------- -------- ------------ 
AUTH_KEY             VARCHAR2(50) - 인증키
AUTH_STATUS NOT NULL NUMBER(1) - 인증상태
*/
public class UsersAuth {
	private String authKey;
	private int authStatus;
	
	public UsersAuth() {
		// TODO Auto-generated constructor stub
	}

	public String getAuthKey() {
		return authKey;
	}

	public void setAuthKey(String authKey) {
		this.authKey = authKey;
	}

	public int getAuthStatus() {
		return authStatus;
	}

	public void setAuthStatus(int authStatus) {
		this.authStatus = authStatus;
	}
	
}
	
	