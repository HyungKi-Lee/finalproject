package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import exception.LoginAuthFailException;
import exception.NotLoginStautsException;
import exception.UserExistsException;
import exception.UserNotFoundException;
import javassist.NotFoundException;
import xyz.itwill.dto.Users;
import xyz.itwill.service.UserService;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
   
	//로그인 페이지 - 비로그인 사용자가 로그인정보 입력하는 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login_get() {
		return "users/users_login";
	}
	
	//로그인 페이지 - 아이디와 비밀번호를 전달받아 로그인 인증처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login_post(@ModelAttribute Users users, HttpSession session) 
		throws LoginAuthFailException, UserNotFoundException {
			userService.loginAuth(users);		
			session.setAttribute("loginSession", userService.selectMemberId(users.getId()));
			return "users/users_login";
	}
	
	//로그인 예외 발생 시, 다시 로그인창으로 이동
	@ExceptionHandler(NotLoginStautsException.class)
	public String notLogin(NotLoginStautsException exception, Model model) {
		return "users/users_login";
	}
	
	//로그인시 아이디나 비밀번호를 입력하지 않고 '로그인' 버튼 클릭시 경고창 알림 후 현재 페이지 재요청
	@ExceptionHandler(LoginAuthFailException.class)
	public String exceptionHander(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("id", exception.getid());

		//model.addAttribute("id", exception.getUsers());
		return "users/users_login";
	}
	
	//로그아웃 처리 - 로그아웃 시 홈으로 이동
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
   }
	
	//회원가입 클릭시 약관동의로 이동
	@RequestMapping(value = "/join_agree", method = RequestMethod.GET)
	public String agree() {
		return "users/users_agree";
	}
	
	//회원가입 페이지 - GET
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join_get() {
		return "users/users_join";
	}	
	
	
	//회원가입 페이지 - POST
	//회원가입시 정보 전달받아 테이블에 저장 후 다시 로그인페이지로 이동
	//예외발생시 FrontController에서의 예외철 메소드 자동호출
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join_post(@ModelAttribute Users users,Model model)throws UserExistsException {
		userService.insertMember(users);
		//model.addAttribute("loginid",users.getId());
		return "redirect:/join_success";
	}	

	//회원가입 시 아이디 중복 될 경우 발생되는 예외 처리
	@ExceptionHandler(UserExistsException.class)
	//예외처리 메소드의 매개변수에는 예외 관련 정보를 전달받아 저장하여 예외 처리 후 ViewName 반환 - JSP 응답
	public String exceptionHander(UserExistsException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("usersInfo", exception.getUsers());
		return "users/users_join";
	}
	

	//회원가입 성공 페이지
	@RequestMapping(value = "/join_success", method = RequestMethod.GET)
	public String joinsuccess2() {
		return "users/users_join_success";
	}

	//아이디 찾기 페이지
		@RequestMapping(value = "/find_id", method = RequestMethod.GET)
		public String findId() {
			return "users/users_find_id";
		}	
	
	//아이디찾기 처리
		@RequestMapping(value = "/find_id", method = RequestMethod.POST)
		public String findId(String name, String email,Model model)throws  UserNotFoundException {
			userService.selectMemberEmail(name,email);
			model.addAttribute("loginid",userService.selectMemberEmail(name,email).getId());
			return "users/users_find_id_success";
		}
	 //아이디찾기 성공페이지
		@RequestMapping(value = "/users_find_id_success", method = RequestMethod.GET)
		public String findid_sueccess(){
			return "users/users_find_id_success";
		}
		
		//아이디찾기 예외처리 핸들러
		@ExceptionHandler(UserNotFoundException.class)
		public String exceptionHander(UserNotFoundException exception, Model model) {
			model.addAttribute("message", exception.getMessage());
			
			//model.addAttribute("id", exception.getUsers());
			return "users/users_find_id";
		}
	
	
	//비밀번호찾기 페이지
	@RequestMapping(value = "/find_pw", method = RequestMethod.GET)
	public String findId3() {
		return "users/users_find_pw";
	}	
	
	//비밀번호찾기 처리
	@RequestMapping(value = "/find_pw", method = RequestMethod.POST)
	public String findpw(String id, String email,Model model)throws  UserNotFoundException {
		userService.selectMemberfindpw(id,email);
		model.addAttribute("email",userService.selectMemberfindpw(id,email).getEmail());
		return "users/users_find_pwemail";
	}

	//회원정보수정 - GET
	@RequestMapping(value = "/mypage/modify", method = RequestMethod.GET)
	public String modify(@RequestParam String id, Model model, HttpSession session) throws UserNotFoundException {
		Users loginSession=(Users)session.getAttribute("loginSession");
		model.addAttribute("users",userService.selectMemberId(id));
		return "users/users_modify";
	}
	  //회원정보수정 - POST
	   @RequestMapping(value = "/mypage/modify", method = RequestMethod.POST) public
	  String modify_post(@ModelAttribute Users users, HttpSession session) throws UserNotFoundException { 
	  userService.updateMember(users); 
	  Users loginSession=(Users)session.getAttribute("loginSession");
	  if(loginSession.getId().equals(users.getId())) {
		  session.setAttribute("loginSession", userService.selectMemberId(users.getId()));
	  }

	  return "redirect:/mypage/modify_success"; 
	  }
	   
		//회원정보 수정 성공 페이지
		@RequestMapping(value = "/mypage/modify_success", method = RequestMethod.GET)
		public String modify_success(Model model, HttpSession session) throws UserNotFoundException {
			Users loginSession=(Users)session.getAttribute("loginSession");
			model.addAttribute("users",loginSession);
			return "users/users_modify_success";
		}
   
	
	
	
	
	
	
	
	
	
	//*******************************마이페이지*******************************//
	
	//회원정보수정 인증 페이지(비밀번호입력)
	@RequestMapping(value = "/mypage/modify_confirm", method = RequestMethod.GET)
	public String mypage_confirm(Model model, HttpSession session) {
		Users loginSession=(Users)session.getAttribute("loginSession");

		return "users/users_modify_confirm";
	}
	
	
	// 회원 탈퇴 get
		@RequestMapping(value="/mypage/delete", method = RequestMethod.GET)
		public String memberDeleteView() throws NotFoundException{
			return "users/users_delete_confirm";
		}
		
		// 회원 탈퇴 post
		@RequestMapping(value="/mypage/delete", method = RequestMethod.POST)
		public String memberDelete(Users users, HttpSession session, RedirectAttributes rttr) throws NotFoundException, UserNotFoundException{
			
			// 세션에 있는 users를 가져와 deleteuser변수에 담는다
			Users deleteuser = (Users) session.getAttribute("loginSession");
			//System.out.println("deleteuser = " +deleteuser);
			// 세션에있는 비밀번호
			String password=deleteuser.getPw();
			
			
			// vo로 들어오는 비밀번호
			//String voPass = users.getPw();
		    //users.setPw(BCrypt.hashpw(voPass,BCrypt.gensalt()));
			if(!BCrypt.checkpw(users.getPw(),password)) {
				rttr.addFlashAttribute("msg", false);
				return "users/users_delete_confirm";
			}
			
			userService.updateMemberStatus(deleteuser.getId());
			session.invalidate();
			return "users/users_delete_scuccess"; 
		}
	
		   
		//회원탈퇴 성공 페이지
		@RequestMapping(value = "/delete_success", method = RequestMethod.GET)
		public String delete_success(Model model, HttpSession session) throws UserNotFoundException {
			return "users/users_delete_scuccess";
			}
		}

