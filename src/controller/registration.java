package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username= request.getParameter("name");
		String password = request.getParameter("pass");
		String email = request.getParameter("email");
		
		  Connection con = null;

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projetjee", "root", "");
			PreparedStatement ps = con.prepareStatement("INSERT INTO `login`(`username`, `password`, `email`) VALUES (?,sha1(?),?)");
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, email);
		
			int i = ps.executeUpdate();
			if(i>0) {
				System.out.print("SUCESS");
				response.sendRedirect("login.jsp");
			} else {
				System.out.print("fail");
				response.sendRedirect("registration.jsp");
			}
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}
			
		
		doGet(request, response);
	}

}
