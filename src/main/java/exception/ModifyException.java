package exception;

import xyz.itwill.dto.Users;

public class ModifyException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private Users users;
	
	public ModifyException() {
		// TODO Auto-generated constructor stub
	}
	
	public ModifyException(String message) {
		super(message);
	
   }

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
}
