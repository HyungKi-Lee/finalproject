package exception;

import xyz.itwill.dto.Users;

//로그인 권한 없는 경우 발생 예외
public class NotLoginStautsException extends Exception {
	private static final long serialVersionUID = 1L;

	private Users users;
	
	public NotLoginStautsException() {
		// TODO Auto-generated constructor stub
	}

	
	public NotLoginStautsException(String message, Users users) {
		super(message);
		this.users = users;
	}


	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	  
	
}
