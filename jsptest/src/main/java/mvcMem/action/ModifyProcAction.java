package mvcMem.action;

import java.io.IOException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mvcMem.control.ActionForward;
import mvcMem.model.StudentDAO;
import mvcMem.model.StudentVO;

public class ModifyProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession httpSession = request.getSession();
		String loginID = (String) httpSession.getAttribute("loginID");
		StudentDAO studentDAO = StudentDAO.getInstance();
		StudentVO studentVO = new StudentVO(loginID, request.getParameter("pass"), request.getParameter("name"),
				request.getParameter("phone1"), request.getParameter("phone2"), request.getParameter("phone3"), 
				request.getParameter("email"), request.getParameter("zipcode"), request.getParameter("address1"), 
				request.getParameter("address2"));
		studentDAO.updateMember(studentVO);
		return new ActionForward("/mvcMem/modifyProc.jsp", false);
	}
}
