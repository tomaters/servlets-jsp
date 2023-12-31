package sample;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Source extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Source() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("start-point");
		
		// needed for FORWARD; transfers the data and does not change url to Destination
//		request.setAttribute("name", "bob");
//		RequestDispatcher requestDispatcher = request.getRequestDispatcher("Destination");
//		requestDispatcher.forward(request, response);

		// needed for REDIRECT; does not transfer the data and changes url to Destination
		HttpSession session = request.getSession();
		session.setAttribute("name", "jim");
		String age = request.getParameter("age");
		session.setAttribute("age", age);
		
		response.sendRedirect("Destination");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
