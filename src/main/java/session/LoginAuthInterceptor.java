package session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

//�α��� ���� ���� ó���� ���� ���ͼ��� Ŭ����
// => ��α��� ������� ��� �α��� �������� �̵� ó��
public class LoginAuthInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		
		if(session.getAttribute("loginSession")==null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return false;
		}
		
		return true;
	}
}	
