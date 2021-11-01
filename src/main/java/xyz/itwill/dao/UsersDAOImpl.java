package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Users;
import xyz.itwill.mapper.UserMapper;
import xyz.itwill.util.Paging;
@Repository
public class UsersDAOImpl implements UsersDAO{

	@Autowired
    private SqlSession sqlSession;
		
	@Override
	public int insertUsers(Users users) {
		return sqlSession.getMapper(UserMapper.class).insertUsers(users);
	}

	@Override
	public int updateUsers(Users users) {
		return sqlSession.getMapper(UserMapper.class).updateUsers(users);
	}

	@Override
	public int updateUsersStatus(String id) {
		return sqlSession.getMapper(UserMapper.class).updateUsersStatus(id);
	}

	@Override
	public Users selectUsersId(String id) {
		return sqlSession.getMapper(UserMapper.class).selectUsersId(id);
	}

	@Override
	public Users selectUsersEmail(String name, String email) {
		return sqlSession.getMapper(UserMapper.class).selectUsersEmail(name, email);
	}
	
	@Override
	public Users selectUserfindpw(String id, String email) {
		return sqlSession.getMapper(UserMapper.class).selectUserfindpw(id, email);
	}
	
	@Override
	public List<Users> selectAllUsers() {
		return sqlSession.getMapper(UserMapper.class).selectAllUsers();
	}
	
	/////////////////////관리자 페이지/////////////////////
	//오늘 가입한 회원수
	@Override
	public int selectTodayUsersCount() {
		return sqlSession.getMapper(UserMapper.class).selectTodayUsersCount();
	}
	
	//오늘 가입한 회원목록
	@Override
	public List<Users> selectTodayUsersList() {
		return sqlSession.getMapper(UserMapper.class).selectTodayUsersList();
	}
	
	//전체 회원수(탈퇴회원 제외)
	@Override
	public int selectUsersCount() {
		return sqlSession.getMapper(UserMapper.class).selectUsersCount();	
	}

	//전체 회원목록(탈퇴회원 제외)
	@Override
	public List<Users> selectUsersList(Paging paging) {
	    return sqlSession.getMapper(UserMapper.class).selectUsersList(paging);
	}
	
	//검색한 회원수(탈퇴회원 제외)
	@Override
	public int selectSearchUsersCount(Map<String, Object> map) {
		return sqlSession.getMapper(UserMapper.class).selectSearchUsersCount(map);	
	}
	
	//검색한 회원목록(탈퇴회원 제외)
	@Override
	public List<Users> selectSearchUsersList(Map<String, Object> map) {
		return sqlSession.getMapper(UserMapper.class).selectSearchUsersList(map);
	}

}
