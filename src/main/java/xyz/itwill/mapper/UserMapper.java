package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import xyz.itwill.dto.Users;
import xyz.itwill.util.Paging;

//USER InterfaceMapper
public interface UserMapper {
	//회원
	int insertUsers(Users users); // 회원정보삽입
	int updateUsers(Users users); // 회원정보 수정
	int updateUsersStatus(String id); //회원정보 상태변경(회원탈퇴)
	Users selectUsersId(String users); //전체 회원정보 검색
	Users selectUsersEmail(@Param("name") String name, @Param("email") String email);//이름과 이메일로 아이디찾기
	Users selectUserfindpw(@Param("id") String id, @Param("email") String email); // 아이디와 이메일로 비밀번호찾기
	List<Users> selectAllUsers(); //전체 회원 정보 아이디순 검색
	
	//***********************관리자 페이지***********************//
	//오늘가입
	int selectTodayUsersCount(); //오늘 가입한 회원수
	List<Users> selectTodayUsersList(); //오늘 가입한 회원목록
	//검색기능 X
	int selectUsersCount(); //전체 회원수(탈퇴회원 제외)
	List<Users> selectUsersList(Paging paging); //전체 회원목록(탈퇴회원 제외)
	//검색기능
	int selectSearchUsersCount(Map<String, Object> map); //검색한 회원 수 검색(탈퇴회원 제외)
	List<Users> selectSearchUsersList(Map<String, Object> map); //검색한 회원 목록 검색(탈퇴회원 제외)
}







