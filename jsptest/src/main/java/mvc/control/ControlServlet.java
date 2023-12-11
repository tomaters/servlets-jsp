package mvc.control;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.action.Action;

public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String cmd = request.getParameter("cmd");
		if(cmd != null) {
			ActionFactory factory = ActionFactory.getInstance();
			Action action = factory.getAction(cmd);
			ActionForward actionForward = action.execute(request, response);
			if(actionForward.isRedirect()) {
				// redirect
				response.sendRedirect(actionForward.getUrl());
			} else {
				// forward
				RequestDispatcher requestDispatcher = request.getRequestDispatcher(actionForward.getUrl());
				requestDispatcher.forward(request, response);
			}
			
		} else {
			// wrong page request; return error message; or can make jsp redirect/forward
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>Error</title></head>");
			out.println("<body>");
			out.println("<h4>Nonexisting page request</h4>");
			out.println("<h4>http://localhost:8080/mvc/test.do?cmd=requestkeyword</h4>");
			out.println("</body>");
			out.println("</html>");
		}
	}
       

/*	unnecessary
   public ControlServlet() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
*/
}
