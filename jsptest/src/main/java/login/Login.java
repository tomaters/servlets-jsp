package login;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession session = request.getSession(false);
			if(session != null) {
				String sessionID = session.getId();
				System.out.println("Session ID: " + sessionID);
				String user = (String)session.getAttribute("user");
				out.println("<html>");
				out.println("<body>");
				out.println("<table border='1' width='300'>");
				out.println("<tr>");
				out.println("<td width='300' align='center'>" + user + " is logged in </td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td align='center' colspan='2'>");
				out.println("<a href='Logout'>Log out</a>");				
				out.println("</td>");
				out.println("</tr>");
				out.println("</table>");
				out.println("</body>");
				out.println("</html>");
			} else {
				out.println("<html>");
				out.println("<body>");
				out.println("<form method='post'>");
				out.println("<table border='1' width='300'");
				out.println("<tr>");
				out.println("<th width='100'> Username </th>");				
				out.println("<td width='200'>&nbsp;<input type='text' name='id'></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<th width='100'> Password </th>");
				out.println("<td width='200'>&nbsp;<input type='password' name='pass'></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td align='center' colspan='2'>");
				out.println("<button type='submit' formaction='ca'>Create account</button>");
				out.println("<button type='submit' formaction='lck'>Log in</button>");				
				out.println("</td>");
				out.println("</tr>");
				out.println("</form>");
				out.println("</table>");
				out.println("</body>");
				out.println("</html>");
				}
			} finally {
				out.close();
			}
		}
	
    public Login() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	processRequest(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	processRequest(request, response);
	}

}
