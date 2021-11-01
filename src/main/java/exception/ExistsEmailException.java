package exception;

import xyz.itwill.dto.Users;

public class ExistsEmailException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private Users users;
	
	public ExistsEmailException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsEmailException(String message, Users users) {
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
