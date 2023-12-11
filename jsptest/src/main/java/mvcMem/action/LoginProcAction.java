package mvcMem.action;

import java.io.IOException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mvcMem.control.ActionForward;
import mvcMem.model.StudentDAO;

public class LoginProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		StudentDAO studentDAO = StudentDAO.getInstance();
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		int check = studentDAO.loginCheck(id, pass);
		if(check == 1) {
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("loginID", id);
		} else if (id != null && pass != null) {
			request.setAttribute("check", check);
		}
		return new ActionForward("member.mdo?cmd=login", false);
	}
}
