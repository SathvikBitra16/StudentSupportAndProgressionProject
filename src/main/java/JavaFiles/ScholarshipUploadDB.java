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

@WebServlet(name = "uploadScholarships", urlPatterns = { "/uploadScholarships" })
public class ScholarshipUploadDB extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String name = request.getParameter("stuname");
			String year = request.getParameter("stuyear");
			String branch = request.getParameter("stubranch");
			String type = request.getParameter("stutype");
			String id = request.getParameter("stunum");
			String syear = request.getParameter("styear");
			PrintWriter out = response.getWriter();
			String query = "INSERT into scholarship_details VALUES (?,?,?,?,?,?)";

			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, year);
			st.setString(2, id);
			st.setString(3, name);
			st.setString(4, branch);
			st.setString(5, syear);
			st.setString(6, type);
			
			st.executeUpdate();

			out.println("<script>");
			out.println("alert('Successfully inserted Scholarship data...');");
			out.println("window.open('scholarship.jsp','_self');");
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
