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

@WebServlet(name = "publication", urlPatterns = { "/publication" })
public class publicationDB extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String year = request.getParameter("year");
			String branch = request.getParameter("branch");
			PrintWriter out = response.getWriter();
			String query = "SELECT * FROM student_publications WHERE year = ? ";


			if (!branch.equalsIgnoreCase("All")) {
			    query += "AND branch = ?";
			} 
			
			
			PreparedStatement st = con.prepareStatement(query);

			int parameterIndex = 1;
			st.setString(parameterIndex++, year);

			if (!branch.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, branch);
			}

			

			int i=0;
			//RequestDispatcher dispatcher = null;
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				request.setAttribute("status", "success");
				out.println("<html><head><style>table{position: relative;left:60px;}p{position: relative;left:540px;top: 0px;font-size: 30px;}");
				out.println("#btn{background-color: #83a4d4;color: black;border: 1px solid black;font-size: 20px;padding: 24px;border-radius: 8px;}");
				out.println("img{width: 100px;height: 70px;position: relative;left: 1240px;top: -100px}");
				out.println("body{background-image: linear-gradient(to right, #b6fbff, #83a4d4);font-family: 'Trebuchet MS', sans-serif;overflow-x: hidden;}</style></body>");
				out.println("<body>");
				out.println("<button id='btn'>Back</button>");
				out.println("<p>The Selected Student data </p>");
				out.println("<img src='logo.png'");
			    out.println("<hr>");
				out.println("</br><table cellspacing='0' cellpadding='5' border='1'>");
				out.println("<tr>");
				out.println("<th>S.No.</th>");
				out.println("<th>Roll No.</th>");
				out.println("<th>Student Name</th>");
				out.println("<th>Title</th>");
				out.println("<th>Year</th>");
				out.println("<th>Branch</th>");
				out.println("<th>Journal Name</th>");
				out.println("<th>Volume No.</th>");
				out.println("<th>Issue No.</th>");
				out.println("</tr>");
				while(rs.next()) {
					i = i+1;
					String str1 = rs.getString("name_of_journal");
					String str2 = rs.getString("vol_issue_pp");
					String str3 = rs.getString("issn_no");
					out.println("<tr>");
					out.println("<td>"+i+"</td>");
					out.println("<td>"+rs.getString("roll_no")+"</td>");
					out.println("<td>"+rs.getString("student_name")+"</td>");
					out.println("<td>"+rs.getString("title")+"</td>");
					out.println("<td>"+rs.getString("year")+"</td>");
					out.println("<td>"+rs.getString("branch")+"</td>");
					if(str1==null) {
						out.println("<td>  </td>");
					}
					else {
						out.println("<td>"+str1+"</td>");
					}
					if(str2==null) {
						out.println("<td>  </td>");
					}
					else {
						out.println("<td>"+str2+"</td>");
					}
					if(str3==null) {
						out.println("<td>  </td>");
					}
					else {
						out.println("<td>"+str3+"</td>");
					}
					
					out.println("</tr>");
				}
				out.println("</table><br><hr>");
				out.println("<script>");
				out.println("document.getElementById('btn').addEventListener('click', () => {history.back();});");
				out.println("</script></body></html>");
			}
			else {
				request.setAttribute("status", "failed");
				out.println("<script>");
				out.println("alert('No User Found');");
				out.println("window.open('studentPublication.jsp','_self');");
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
