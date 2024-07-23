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

@WebServlet(name = "queryInsert", urlPatterns = { "/queryInsert" })
public class UploadQuery extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String year = request.getParameter("year");
			String ques = request.getParameter("query");
			PrintWriter out = response.getWriter();
			String s = "INSERT into queries_table VALUES (?,?)";

			PreparedStatement st = con.prepareStatement(s);
			
			st.setString(1, year);
			st.setString(2, ques);
			
			st.executeUpdate();

			out.println("<script>");
			out.println("alert('Your response has been submitted...');");
			out.println("window.open('studentGrievences.jsp','_self');");
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
