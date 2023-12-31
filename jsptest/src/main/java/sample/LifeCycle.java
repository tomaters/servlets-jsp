package sample;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LifeCycle() {
        super();
        System.out.println("LifeCycle constructor");
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("LifeCycle initialized");
	}

	public void destroy() {
		System.out.println("LifeCycle destroyed");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LifeCycle service function called");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LifeCycle doGet function called");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LifeCycle doPost function called");
		doGet(request, response);
	}
}
