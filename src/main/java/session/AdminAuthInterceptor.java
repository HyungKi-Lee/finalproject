package session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import xyz.itwill.dto.Users;

//���ͼ��� Ŭ������ HandlerInterceptor �������̽��� ��ӹ޾� �ۼ�
// => �ʿ��� �޼ҵ带 �������̵� �����Ͽ� �ۼ�
// => Bean Configuration File���� Spring Bean���� ���

//������ ���� ���� ó���� ���� ���ͼ��� Ŭ����
// => ��û ó�� �޼ҵ� ȣ�� �� ��α��� ������̰ų� �����ڰ� �ƴ� ��� ������������ �̵� ó��
public class AdminAuthInterceptor implements HandlerInterceptor {
	//preHandle : ��û ó�� �޼ҵ� ȣ�� �� ����� ����� �ۼ��ϴ� �޼ҵ�
	// => ���� ���� ����� �����ϱ� ���� ���
	// => false ��ȯ : ��û ó�� �޼ҵ� ��ȣ��, true ��ȯ : ��û ó�� �޼ҵ� ȣ��
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		
		Users loginSession=(Users)session.getAttribute("loginSession");
		
		if(loginSession==null || loginSession.getStatus()!=9) {
			//request.getRequestDispatcher("error/error.jsp").forward(request, response);
			//return false;		
			
			response.sendRedirect(request.getContextPath()+"/error");
			return false;		
			
			//throw new Exception(); //������ ��� ���ܿ� ���� ó�� - ExceptionController���� ���� ó�� �� �� �ֵ���
		}
		return true;
	}
	
	//postHandle : ��û ó�� �޼ҵ� ȣ�� �� ����� ����� �ۼ��ϴ� �޼ҵ�
	// => ��û ó�� �޼ҵ忡�� ���ܰ� �߻��� ��� �޼ҵ� �̽���
	// => ��û ó�� �޼ҵ��� ��ȯ���� ������ ��� ���
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	
	//afterCompletion : ��û ó�� �޼ҵ� ȣ�� �� ����� ����� �ۼ��ϴ� �޼ҵ�
	// => ��û ó�� �޼ҵ忡�� ���ܰ� �߻��� ��쿡�� �޼ҵ� ����
	// => ���� ó���� �������� ���
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
}
