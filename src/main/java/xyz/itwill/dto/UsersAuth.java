package xyz.itwill.dto;
/*
�̸�          ��?       ����           
----------- -------- ------------ 
AUTH_KEY             VARCHAR2(50) - ����Ű
AUTH_STATUS NOT NULL NUMBER(1) - ��������
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
	
	