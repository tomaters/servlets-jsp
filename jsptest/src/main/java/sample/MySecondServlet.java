package sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MySecondServlet
 */
public class MySecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 

	// the init function is called once upon initialization. override when there is something else to do when initializing; beginning of life cycle
    @Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
	}

    // this is the function that deletes the servlet when everything is done. override when there is something else to do when finished; end of life cycle
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}

	public MySecondServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// text to display
		response.setContentType("text/html;charset=utf-8");
		
		// this was automatically generated
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// construct object to display
		PrintWriter printWriter = response.getWriter();
		
		// creating info to display (later on, will need to bring from database using SELECT)
		Date date = new Date();
		String displayDate = date.toString();
		
		// setting information to display
		printWriter.println("<!DOCTYPE html>");
		printWriter.println("<html>");
		printWriter.println("<head>");
		// not really necessary
//		printWriter.println("<meta charset=\"UTF-8\">");
		printWriter.println("<title>Insert title here</title>");
		// changed " to '
		printWriter.println("<link rel=\'stylesheet\' href=\'./css/jsptest.css\'>");
		printWriter.println("<style>");
		printWriter.println("h1{background-color: yellow;}");
		printWriter.println("</style>");
		printWriter.println("</head>");
		printWriter.println("<body>");
		// changed syntax
		printWriter.println("<h1>" +  displayDate + " hello " + "</h1>");
		printWriter.println("</body>");
		printWriter.println("</html>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
