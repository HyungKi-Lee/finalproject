package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import xyz.itwill.dto.Users;
import xyz.itwill.util.Paging;

public interface UsersDAO {
	int insertUsers(Users users); // ȸ������ ����
	int updateUsers(Users users); //ȸ������ ����
	int updateUsersStatus(String id); //ȸ������ ���º���(ȸ��Ż��)
	Users selectUsersId(String id); //��ü ȸ������ �˻� - ������
	Users selectUsersEmail(String email, String name);//�̸��� �̸��Ϸ� ���̵� ã�� - ������
	Users selectUserfindpw(@Param("id") String id, @Param("email") String email);// ���̵�� �̸��Ϸ� ��й�ȣã�� - ������
	List<Users> selectAllUsers(); //��ü ȸ������ ���̵������ �˻�
	
	/////////////////////������ ������/////////////////////
	//���ð���
	int selectTodayUsersCount(); //���� ������ ȸ����
	List<Users> selectTodayUsersList(); //���� ������ ȸ�����
	//�˻���� X
	int selectUsersCount(); //��ü ȸ����(Ż��ȸ�� ����)
	List<Users> selectUsersList(Paging paging); //��ü ȸ�����(Ż��ȸ�� ����)
	//�˻����
	int selectSearchUsersCount(Map<String, Object> map); //�˻��� ȸ�� �� �˻�(Ż��ȸ�� ����)
	List<Users> selectSearchUsersList(Map<String, Object> map); //�˻��� ȸ�� ��� �˻�(Ż��ȸ�� ����)
	
}

