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

@WebServlet(name = "uploadAdmissions", urlPatterns = { "/uploadAdmissions" })
public class AdmissionUploadDB extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String name = request.getParameter("stuname");
			String year = request.getParameter("stuyear");
			String grad = request.getParameter("stugraduation");
			String branch = request.getParameter("stubranch");
			String type = request.getParameter("stutype");
			String category = request.getParameter("stucategory");
			String gender = request.getParameter("stugender");
			String entry = request.getParameter("stuentry");
			PrintWriter out = response.getWriter();
			String query = "INSERT into admission_details_2021 VALUES (?,?,?,?,?,?,?,?)";

			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, name);
			st.setString(2, type);
			st.setString(3, gender);
			st.setString(4, branch);
			st.setString(5, year);
			st.setString(6, category);
			st.setString(7, entry);
			st.setString(8, grad);
			
			st.executeUpdate();

			out.println("<script>");
			out.println("alert('Successfully inserted Student data...');");
			out.println("window.open('studentAdmission.jsp','_self');");
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
