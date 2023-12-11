package mvcMem.control;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvcMem.action.Action;

public class MemControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemControlServlet() {
        super();
    }

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
    	response.setContentType("text/html;charset=utf-8");
    	String cmd = request.getParameter("cmd");
    	if(cmd != null) {
    		ActionFactory actionFactory = ActionFactory.getInstance();
    		Action action = actionFactory.getAction(cmd);
    		ActionForward actionFoward = action.execute(request, response);
    		if(actionFoward.isRedirect()) {
    			response.sendRedirect(actionFoward.getUrl());
    		} else {
    			RequestDispatcher requestDispatcher = request.getRequestDispatcher(actionFoward.getUrl());
    			requestDispatcher.forward(request, response);
    		}
    	} else {
    		PrintWriter out = response.getWriter();
    		out.println("<html>");
    		out.println("<head><title>Error</title></head>");
    		out.println("<body>");
    		out.println("<h4>Incorrect request</h4>");
    		out.println("<h4>http://localhost:8080/myWeb/mvcMem/member.mdo?cmd=requestkeyword</h4>");
    		out.println("</body>");
    		out.println("</html>");
    	}
    }
}
