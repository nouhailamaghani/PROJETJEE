package controller;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class loginS
 */
@WebServlet("/loginS")
public class loginS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username= request.getParameter("username");
		String password = request.getParameter("password");
		//data base
		Connection con =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projetjee", "root", "");
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery( "SELECT * FROM `login` WHERE username = '"+ username +"' AND password = '"+ password +"' ");
			if(rs.next()) {
				   HttpSession session = request.getSession();
					  session.setAttribute("username", username);
					 this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			}else {
				response.sendRedirect("login.jsp");
				System.out.println("wrong password or username");
			}
	}
		catch(Exception e){
		System.out.println(e.getMessage());
	}
		
		doGet(request, response);
	
	}
}
	
