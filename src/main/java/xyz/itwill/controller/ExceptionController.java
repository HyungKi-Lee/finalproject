package xyz.itwill.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;

//@ControllerAdvice : ����ó�� �޼ҵ常 ����� Controller Ŭ�������� ����ϴ� ������̼�
// => ��� ��Ʈ�ѷ��� ��û ó�� �޼ҵ忡�� �߻��Ǵ� ���ܿ� ���� ó�� ����
@ControllerAdvice
public class ExceptionController {
	/*
	@ExceptionHandler(Exception.class)
	public String exceptionHander(Exception exception) {
		exception.printStackTrace();//���ܸ� �ֿܼ� ���
		return "userinfo/user_error";
	}
	*/
	
	@RequestMapping("/error")
	public String error() {
		return "error/error";
	}
}
