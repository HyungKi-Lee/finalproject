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

	//회원정보 삽입
	//[검증]전달받은 회원정보의 아이디가 기존회원의 아이디와 중복될 경우 예외발생
	@Override
	public void insertMember(Users users) throws UserExistsException{
		if (usersDAO.selectUsersId(users.getId())!=null) {
			throw new UserExistsException("이미 사용중인 아이디입니다.",users);
		}
		//암호화
		users.setPw(BCrypt.hashpw(users.getPw(),BCrypt.gensalt()));
		usersDAO.insertUsers(users);
	}
	
	//회원정보 변경 및 수정
    //[검증]전달받은 회원정보 아이디가 기존 회원의 아이디가 아닌경우(즉, 회원정보없음)
	@Override
	public void updateMember(Users users) throws UserNotFoundException {
		if(usersDAO.selectUsersId(users.getId())==null) {
			throw new UserNotFoundException("회원정보가 존재하지 않습니다.");
		}
		//암호화
		String password=users.getPw();
		if(password!=null && !password.equals("")) {
			users.setPw(BCrypt.hashpw(users.getPw(), BCrypt.gensalt()));
		}
      usersDAO.updateUsers(users);
	}

	//회원정보 권한변경(삭제)
	//[검증]전달받은 회원정보 아이디가 기존 회원의 아이디가 아닌경우(즉, 회원정보없음)
	@Override
	public void updateMemberStatus(String id) throws UserNotFoundException {
		if(usersDAO.selectUsersId(id)==null) {
			throw new UserNotFoundException("회원정보가 존재하지 않습니다.");
		}
	  usersDAO.updateUsersStatus(id);		
	}
	
	//전달받은 회원정보 이메일,이름으로 회원 아이디 찾기
    //[검증]전달받은 회원정보 이메일,이름으로 회원 아이디 찾기
	@Override
	public Users selectMemberEmail(String name, String email) throws UserNotFoundException {
		if(usersDAO.selectUsersEmail(name,email)==null) {
			throw new UserNotFoundException("회원정보가 존재하지 않습니다.");
	}
		return usersDAO.selectUsersEmail(name, email);
	}
	
	//비밀번호찾기
	@Override
	public Users selectMemberfindpw(String id, String email) throws UserNotFoundException {
		if(usersDAO.selectUserfindpw(id,email)==null) {
			throw new UserNotFoundException("회원정보가 존재하지 않습니다.");
	}
		return usersDAO.selectUserfindpw(id, email);
	}
	
	//전달받은 아이디로 해당 회원정보 검색 - 단일행
	@Override
	public Users selectMemberId(String id) throws UserNotFoundException {
		Users usersid=usersDAO.selectUsersId(id);
		if(usersid==null) {
			throw new UserNotFoundException("회원정보가 존재하지 않습니다.");
		}
		return usersid;	
	}
	
	//▶로그인시 인증 검증◀
	@Override
	public void loginAuth(Users users) throws LoginAuthFailException {
		Users authUsers=usersDAO.selectUsersId(users.getId());
		if(authUsers==null) { //아이디 인증 실패시 - 예외 발생
			throw new LoginAuthFailException("회원정보의 아이디가 존재하지 않습니다.",users.getId());
		}
		if(authUsers.getStatus()==0) { //아이디 인증 실패시 - 예외 발생
			throw new LoginAuthFailException("탈퇴한 회원입니니다",users.getId());
		}
		//암호화
	 	if(!BCrypt.checkpw(users.getPw(), authUsers.getPw())) {//비밀번호 인증 실패 - 예외 발생
			throw new LoginAuthFailException("아이디가 없거나 비밀번호가 맞지 않습니다.",users.getId());
		}
	}
	
	@Override
	public List<Users> selectAllMember() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	//***********************관리자 페이지***********************//
	//오늘 가입한 회원수
	@Override
	public int getTodayUsersCount() {
		return usersDAO.selectTodayUsersCount();
	}
	
	//오늘 가입한 회원목록
	@Override
	public List<Users> getTodayUsersList() {
		return usersDAO.selectTodayUsersList();
	}		

	
	//전체 회원수(탈퇴회원 제외)
	@Override
	public int getUsersCount() {
		return usersDAO.selectUsersCount();
	}

	//전체 회원목록(탈퇴회원 제외)
	@Override
	public List<Users> getUsersList(Paging paging) {
		return usersDAO.selectUsersList(paging);
	}
	
	//검색한 회원수(탈퇴회원 제외)
	@Override
	public int getSearchUsersCount(Map<String, Object> map) {
		return usersDAO.selectSearchUsersCount(map);
	}
	
	//검색한 회원목록(탈퇴회원 제외)
	@Override
	public List<Users> getSearchUsersList(Map<String, Object> map) {
		return usersDAO.selectSearchUsersList(map);
	}
	
}
