package JavaFiles;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ServletClasses.DBConnect;

@WebServlet(name = "login", urlPatterns = { "/login" })
public class check_login extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String uname = request.getParameter("uname");
			String pass = request.getParameter("pwd");
			PreparedStatement st = con.prepareStatement("select uname,password from users where uname=? and password=?");
			st.setString(1, uname);
			st.setString(2, pass);
			HttpSession session = request.getSession();
			RequestDispatcher dispatcher = null;
			ResultSet rs=st.executeQuery();
			PrintWriter out = response.getWriter();
			if(rs.next()) {
				request.setAttribute("status", "success");
				session.setAttribute("name",rs.getString("uname"));
				out.println("<script>");
				out.println("alert('Congrats, Logged in Successfully');");
				out.println("window.open('homePage.html','_self');");
				out.println("</script>");
			}
			else {
				request.setAttribute("status", "failed");
				out.println("<script>");
				out.println("alert('Sorry, Wrong Username or Password');");
				out.println("window.open('loginPage.jsp','_self');");
				out.println("</script>");
			}
			//dispatcher.forward(request, response);
			st.close();
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse   response) throws ServletException, IOException {
        doPost(request, response);
	}


}
