package sample;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Destination extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Destination() {
        super();
    }

    protected void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// needed for FORWARD
//    	String name = (String) request.getAttribute("name");
//    	int age = (Integer.parseInt((String) request.getParameter("age")));
    	
    	// needed for REDIRECT
    	HttpSession session = request.getSession(false);
    	String name = (String) session.getAttribute("name");
    	String age = (String) session.getAttribute("age");
    	
    	response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Destination</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Destination Servlet</h1>");
            out.println("<h3> Name: " + name + "</h3>");
            out.println("<h3> Age: " + age + "</h3>");
            out.println("</body>");
            out.println("</html>");
        } finally { 
            out.close();
        }
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);	
	}
}
