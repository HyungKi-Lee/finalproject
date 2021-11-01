package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import exception.LoginAuthFailException;
import exception.UserExistsException;
import exception.UserNotFoundException;
import xyz.itwill.dto.Users;
import xyz.itwill.util.Paging;

public interface UserService {
    //
	void insertMember(Users users) throws UserExistsException; // �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
	void updateMember(Users users) throws UserNotFoundException; //�쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
	void updateMemberStatus(String id) throws UserNotFoundException; //�쉶�썝�젙蹂� �긽�깭蹂�寃�(�쉶�썝�깉�눜) throws UserNotFoundException; //�쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�듅釉앹삕�뜝�룞�삕
	Users selectMemberId(String id) throws UserNotFoundException; //�뜝�룞�삕�뜝�떛�벝�삕�뜝占� �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떙�궪�삕(�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕)
	Users selectMemberEmail(String email, String name) throws UserNotFoundException;//�뜝�떛紐뚯삕�뜝�룞�삕 �뜝�떛紐뚯삕�뜝�떦琉꾩삕 �뜝�룞�삕�뜝�떛�벝�삕 李얍뜝�룞�삕
	Users selectMemberfindpw(String id, String email) throws UserNotFoundException ; //�뜝�룞�삕�뜝�떛�벝�삕�뜝占� �뜝�떛紐뚯삕�뜝�떦琉꾩삕 �뜝�룞�삕艅섇뜝�떕占� 李얍뜝�룞�삕
	List<Users> selectAllMember(); //�뜝�룞�삕泥� �쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�떛�벝�삕�뜝�룞�삕�뜝�룞�삕�뜝占� �뜝�떙�궪�삕

	//***********************�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕***********************//
	//�삤�뒛媛��엯
	int getTodayUsersCount(); //�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �쉶�뜝�룞�삕�뜝�룞�삕
	List<Users> getTodayUsersList(); //�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �쉶�뜝�룞�삕�뜝�룞�삕�뜝占�
	//寃��깋湲곕뒫 X
	int getUsersCount(); //�뜝�룞�삕泥� �쉶�뜝�룞�삕�뜝�룞�삕(�깉�뜝�룞�삕�쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕)
	List<Users> getUsersList(Paging paging); //�뜝�룞�삕泥� �쉶�뜝�룞�삕�뜝�룞�삕�뜝占�(�깉�뜝�룞�삕�쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕)
	//寃��깋湲곕뒫
	int getSearchUsersCount(Map<String, Object> map); //�뜝�떙�궪�삕�뜝�룞�삕 �쉶�뜝�룞�삕�뜝�룞�삕(�깉�뜝�룞�삕�쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕)
	List<Users> getSearchUsersList(Map<String, Object> map); //�뜝�떙�궪�삕�뜝�룞�삕 �쉶�뜝�룞�삕�뜝�룞�삕�뜝占�(�깉�뜝�룞�삕�쉶�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕)
	
	//�뜝�떥源띿삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�떩�룞�삕 front controller�뜝�룞�삕 �샇�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕泥섇뜝�룞�삕 �뜝�뙣�냼�벝�삕(�뜝�룞�삕�뜝�룞�삕泥섇뜝�룞�삕)
	void loginAuth(Users users) throws LoginAuthFailException;
}





