package exception;

import xyz.itwill.dto.Users;

//회원등록시 사용자가 입력한 아이디가 이미 존재하는 경우를 위해 작성된 예외클래스
//[중복인 경우]
public class UserExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	
	//예외 처리시 필요한 값을 저장하기 위한 필드
	// => 사용자가 입력한 회원정보를 저장하기 위한 필드
	private Users users;
	
	public UserExistsException() {
		// TODO Auto-generated constructor stub
	}
	
	public UserExistsException(String message, Users users) {
		super(message);
		this.users=users;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
}
