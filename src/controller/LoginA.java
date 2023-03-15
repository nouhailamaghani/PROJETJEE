package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginA
 */
@WebServlet("/LoginA")
public class LoginA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("AdminP.jsp").forward(request, response);
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
			ResultSet rs = stm.executeQuery( "SELECT * FROM `admin` WHERE name = '"+ username +"' AND password = '"+ password +"' ");
			request.setAttribute("auth",rs);
			if(rs.next()) {
				   HttpSession session = request.getSession();
					  session.setAttribute("username", username);
					 
			}else {
				response.sendRedirect("login.jsp");
				System.out.println("wrong password or username");
			}
	}
		catch(Exception e){
		System.out.println(e.getMessage());
	}
		 this.getServletContext().getRequestDispatcher("/AdminP.jsp").forward(request, response);
		doGet(request, response);
	}

}
