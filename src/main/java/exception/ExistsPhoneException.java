package exception;

import xyz.itwill.dto.Users;

public class ExistsPhoneException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private Users users;
	
	public ExistsPhoneException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsPhoneException(String message, Users users) {
		super(message);
		this.users=users;
	}	
	
	public Users getUsers() {
		return users;
	}

	public void setUser(Users users) {
		this.users = users;
	}
}
