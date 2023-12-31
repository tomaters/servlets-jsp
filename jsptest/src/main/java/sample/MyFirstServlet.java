package sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MyFirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String tel;
	private String password; 
	
    public MyFirstServlet() {
        super();
    }

	@Override
	public void init() throws ServletException {
		super.init();
		ServletConfig servletConfig = this.getServletConfig();
		tel = servletConfig.getInitParameter("tel");
		password = servletConfig.getInitParameter("password");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Date date = new Date();
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>My First Servlet Program </h1>");
        out.println("<br>");
        out.println(date.toString());
        out.println("<br>");
        out.println("<li>phone number : " + this.getTel() + "</li>");
        out.println("<li>password : " + this.getPassword() + "</li>");
        out.println("</body>");
        out.println("</html>");
        out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
