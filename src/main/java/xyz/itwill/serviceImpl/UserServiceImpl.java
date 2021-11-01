	package xyz.itwill.serviceImpl;

import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import exception.LoginAuthFailException;
import exception.UserExistsException;
import exception.UserNotFoundException;
import xyz.itwill.dao.UsersDAO;
import xyz.itwill.dto.Users;
import xyz.itwill.service.UserService;
import xyz.itwill.util.Paging;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UsersDAO usersDAO;

	//ȸ������ ����
	//[����]���޹��� ȸ�������� ���̵� ����ȸ���� ���̵�� �ߺ��� ��� ���ܹ߻�
	@Override
	public void insertMember(Users users) throws UserExistsException{
		if (usersDAO.selectUsersId(users.getId())!=null) {
			throw new UserExistsException("�̹� ������� ���̵��Դϴ�.",users);
		}
		//��ȣȭ
		users.setPw(BCrypt.hashpw(users.getPw(),BCrypt.gensalt()));
		usersDAO.insertUsers(users);
	}
	
	//ȸ������ ���� �� ����
    //[����]���޹��� ȸ������ ���̵� ���� ȸ���� ���̵� �ƴѰ��(��, ȸ����������)
	@Override
	public void updateMember(Users users) throws UserNotFoundException {
		if(usersDAO.selectUsersId(users.getId())==null) {
			throw new UserNotFoundException("ȸ�������� �������� �ʽ��ϴ�.");
		}
		//��ȣȭ
		String password=users.getPw();
		if(password!=null && !password.equals("")) {
			users.setPw(BCrypt.hashpw(users.getPw(), BCrypt.gensalt()));
		}
      usersDAO.updateUsers(users);
	}

	//ȸ������ ���Ѻ���(����)
	//[����]���޹��� ȸ������ ���̵� ���� ȸ���� ���̵� �ƴѰ��(��, ȸ����������)
	@Override
	public void updateMemberStatus(String id) throws UserNotFoundException {
		if(usersDAO.selectUsersId(id)==null) {
			throw new UserNotFoundException("ȸ�������� �������� �ʽ��ϴ�.");
		}
	  usersDAO.updateUsersStatus(id);		
	}
	
	//���޹��� ȸ������ �̸���,�̸����� ȸ�� ���̵� ã��
    //[����]���޹��� ȸ������ �̸���,�̸����� ȸ�� ���̵� ã��
	@Override
	public Users selectMemberEmail(String name, String email) throws UserNotFoundException {
		if(usersDAO.selectUsersEmail(name,email)==null) {
			throw new UserNotFoundException("ȸ�������� �������� �ʽ��ϴ�.");
	}
		return usersDAO.selectUsersEmail(name, email);
	}
	
	//��й�ȣã��
	@Override
	public Users selectMemberfindpw(String id, String email) throws UserNotFoundException {
		if(usersDAO.selectUserfindpw(id,email)==null) {
			throw new UserNotFoundException("ȸ�������� �������� �ʽ��ϴ�.");
	}
		return usersDAO.selectUserfindpw(id, email);
	}
	
	//���޹��� ���̵�� �ش� ȸ������ �˻� - ������
	@Override
	public Users selectMemberId(String id) throws UserNotFoundException {
		Users usersid=usersDAO.selectUsersId(id);
		if(usersid==null) {
			throw new UserNotFoundException("ȸ�������� �������� �ʽ��ϴ�.");
		}
		return usersid;	
	}
	
	//���α��ν� ���� ������
	@Override
	public void loginAuth(Users users) throws LoginAuthFailException {
		Users authUsers=usersDAO.selectUsersId(users.getId());
		if(authUsers==null) { //���̵� ���� ���н� - ���� �߻�
			throw new LoginAuthFailException("ȸ�������� ���̵� �������� �ʽ��ϴ�.",users.getId());
		}
		if(authUsers.getStatus()==0) { //���̵� ���� ���н� - ���� �߻�
			throw new LoginAuthFailException("Ż���� ȸ���Դϴϴ�",users.getId());
		}
		//��ȣȭ
	 	if(!BCrypt.checkpw(users.getPw(), authUsers.getPw())) {//��й�ȣ ���� ���� - ���� �߻�
			throw new LoginAuthFailException("���̵� ���ų� ��й�ȣ�� ���� �ʽ��ϴ�.",users.getId());
		}
	}
	
	@Override
	public List<Users> selectAllMember() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	//***********************������ ������***********************//
	//���� ������ ȸ����
	@Override
	public int getTodayUsersCount() {
		return usersDAO.selectTodayUsersCount();
	}
	
	//���� ������ ȸ�����
	@Override
	public List<Users> getTodayUsersList() {
		return usersDAO.selectTodayUsersList();
	}		

	
	//��ü ȸ����(Ż��ȸ�� ����)
	@Override
	public int getUsersCount() {
		return usersDAO.selectUsersCount();
	}

	//��ü ȸ�����(Ż��ȸ�� ����)
	@Override
	public List<Users> getUsersList(Paging paging) {
		return usersDAO.selectUsersList(paging);
	}
	
	//�˻��� ȸ����(Ż��ȸ�� ����)
	@Override
	public int getSearchUsersCount(Map<String, Object> map) {
		return usersDAO.selectSearchUsersCount(map);
	}
	
	//�˻��� ȸ�����(Ż��ȸ�� ����)
	@Override
	public List<Users> getSearchUsersList(Map<String, Object> map) {
		return usersDAO.selectSearchUsersList(map);
	}
	
}
