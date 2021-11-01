package exception;

//회원정보의 변경,삭제,검색시 아이디의 회원정보가 없는 경우를 위해 작성된 예외클래스
//[사용자 정보가 없는 경우]
public class UserNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public UserNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public UserNotFoundException(String message) {
		super(message);
	}
}
