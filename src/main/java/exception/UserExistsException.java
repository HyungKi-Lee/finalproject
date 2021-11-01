package exception;

import xyz.itwill.dto.Users;

//ȸ����Ͻ� ����ڰ� �Է��� ���̵� �̹� �����ϴ� ��츦 ���� �ۼ��� ����Ŭ����
//[�ߺ��� ���]
public class UserExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	
	//���� ó���� �ʿ��� ���� �����ϱ� ���� �ʵ�
	// => ����ڰ� �Է��� ȸ�������� �����ϱ� ���� �ʵ�
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
