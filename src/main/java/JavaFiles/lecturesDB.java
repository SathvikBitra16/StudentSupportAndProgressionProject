package JavaFiles;

import java.io.*;

import java.sql.*;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServletClasses.DBConnect;

@WebServlet(name = "lectures", urlPatterns = { "/lectures" })
public class lecturesDB extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String year = request.getParameter("year");
			String branch = request.getParameter("branch");
			String type = request.getParameter("type");
			PrintWriter out = response.getWriter();
			String query = "SELECT * FROM GUEST_LECTURE_IT WHERE ";

			if (!type.equalsIgnoreCase("All")) {
			    query += "AUDIENCE = ?";
			} 
			else {
			    query += "AUDIENCE IS NOT NULL";
			}

			query += " AND ";

			if (!branch.equalsIgnoreCase("All")) {
			    query += "BRANCH = ?";
			}
			else {
			    query += "BRANCH IS NOT NULL";
			}
			query += " AND YEAR = ?";
			PreparedStatement st = con.prepareStatement(query);

			int parameterIndex = 1;

			if (!type.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, type);
			}

			if (!branch.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, branch);
			}
			st.setString(parameterIndex++, year);
			int i=0;
			ResultSet rs = st.executeQuery();
			if(rs.isBeforeFirst()) {
				request.setAttribute("status", "success");
				out.println("<html><head><style>table{width: 95%;}p{position: relative;left:540px;top: 0px;font-size: 30px;}");
				out.println("#btn{background-color: #83a4d4;color: black;border: 1px solid black;font-size: 20px;padding: 24px;border-radius: 8px;}");
				out.println("img{width: 100px;height: 70px;position: relative;left: 1240px;top: -100px}");
				out.println("body{background-image: linear-gradient(to right, #b6fbff, #83a4d4);font-family: 'Trebuchet MS', sans-serif;overflow-x: hidden;}");
				out.println("th,td {padding: 8px;text-align: left;word-wrap: break-word;}</style>");
				out.println("<body>");
				out.println("<button id='btn'>Back</button>");
				out.println("<p>The Selected Guest Lectures data </p>");
				out.println("<img src='logo.png'");
			    out.println("<hr>");
				out.println("</br><center><table cellspacing='0' cellpadding='5' border='1'>");
				out.println("<tr>");
				out.println("<th>S.No.</th>");
				out.println("<th>Resource Persons</th>");
				out.println("<th>Title</th>");
				out.println("<th>Year</th>");
				out.println("<th>Branch</th>");
				out.println("<th>Target Audience</th>");
				out.println("<th>Dates</th>");
				out.println("</tr>");
				
				while(rs.next()) {
					i = i+1;
					out.println("<tr>");
					out.println("<td>"+i+"</td>");
					out.println("<td>"+rs.getString("RESOURCEPERSON")+"</td>");
					out.println("<td>"+rs.getString("TITLE")+"</td>");
					out.println("<td>"+rs.getString("YEAR")+"</td>");
					out.println("<td>"+rs.getString("BRANCH")+"</td>");
					out.println("<td>"+rs.getString("AUDIENCE")+"</td>");
					out.println("<td>"+rs.getString("DATES")+"</td>");
					out.println("</tr>");
				}
				out.println("</table></center><br><hr>");
				out.println("<script>");
				out.println("document.getElementById('btn').addEventListener('click', () => {history.back();});");
				out.println("</script></body></html>");
			}
			else {
				request.setAttribute("status", "failed");
				out.println("<script>");
				out.println("alert('No User Found');");
				out.println("window.open('CareerGuide.jsp','_self');");
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
