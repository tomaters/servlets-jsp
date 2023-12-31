package bbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class VisitList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			out.println("<html>");
			out.println("<head><title>List</title>");
			out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css' rel=stylesheet>");
			out.println("<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js'></script>");
			out.println("</head>");
			out.println("<body>");
			StringBuffer sql = new StringBuffer();
			sql.append("select no, writer, memo, regdate ");
			sql.append("from visit ");
			sql.append("order by no desc ");
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
				preparedStatement = connection.prepareStatement(sql.toString());
				resultSet = preparedStatement.executeQuery();
				while(resultSet.next()) {
					int no = resultSet.getInt("no");
					String writer = resultSet.getString("writer");
					String memo = resultSet.getString("memo");
					java.sql.Date regdate = resultSet.getDate("regdate");
					out.println("<table align=center class='table text-center mx-auto table-bordered table-hover p-2 mt-3 w-50' style=border:lightgray>");
					out.println("<tr>");
					out.println("<th>Number</th>");
					out.println("<td>" + no + "</td>");
					out.println("<th>" + writer + "</th>");
					out.println("<td>" + regdate + "</td>");
					out.println("</tr>");
					out.println("<tr>");
					out.println("<th>Contents</th>");
					out.println("<td colspan=3><textarea rows=3 cols=50>" + memo + "</textarea></td>");
					out.println("</tr>");
					out.println("</table>");
					out.println("<p>");
				}
			} catch(SQLException e) {
				e.printStackTrace();
			} catch(ClassNotFoundException e) {
				e.printStackTrace();
			} finally {
				try {
					if(preparedStatement != null) preparedStatement.close();
				} catch(SQLException e) {}
				try {
					if(connection != null) connection.close();
				} catch(SQLException e) {}
			}
			out.println("<p align=center> <a href=/jsptest/bbs/write2.html class='btn btn-primary w-25 p-1 m-1'> Write </a></p>");
			out.println("</body>");
			out.println("</html>");
		} finally {
			out.close();
		}
	}
	
    public VisitList() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	processRequest(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
