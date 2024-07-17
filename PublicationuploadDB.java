package JavaFiles;

import java.io.*;
import java.sql.*;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import ServletClasses.DBConnect;

@WebServlet(name = "uploadPublications", urlPatterns = { "/uploadPublications" })
public class PublicationuploadDB extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String name = request.getParameter("stuname");
			String year = request.getParameter("stuyear");
			String branch = request.getParameter("stubranch");
			String rollno = request.getParameter("stunum");
			String jname = request.getParameter("jouname");
			String vol = request.getParameter("volume");
			String issno = request.getParameter("issnum");
			String title = request.getParameter("stutitle");
			PrintWriter out = response.getWriter();
			String query = "INSERT into STUDENT_PUBLICATIONS VALUES (?,?,?,?,?,?,?,?)";

			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, rollno);
			st.setString(2, name);
			st.setString(3, title);
			st.setString(4, year);
			st.setString(5, branch);
			st.setString(6, jname);
			st.setString(7, vol);
			st.setString(8, issno);
			
			st.executeUpdate();
			
			out.println("<script>");
			out.println("alert('Successfully inserted Publication data...');");
			out.println("window.open('studentPublication.jsp','_self');");
			out.println("</script>");
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
