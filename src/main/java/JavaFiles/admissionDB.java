package JavaFiles;

import java.io.*;
import java.sql.*;
import java.util.Dictionary;
import java.util.Hashtable;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import ServletClasses.DBConnect;

@WebServlet(name = "admission", urlPatterns = { "/admission" })
public class admissionDB extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection con = DBConnect.connect();
			String year = request.getParameter("year");
			String grad = request.getParameter("graduation");
			String branch = request.getParameter("branch");
			String type = request.getParameter("type");
			String category = request.getParameter("category");
			String gender = request.getParameter("gender");
			String entry = request.getParameter("entry");
			PrintWriter out = response.getWriter();
			//PreparedStatement st;
			String query = "SELECT * FROM admission_details_2021 WHERE ";

			if (!type.equalsIgnoreCase("All")) {
			    query += "admission_type = ?";
			} else {
			    query += "admission_type IS NOT NULL";
			}

			query += " AND ";

			if (!gender.equalsIgnoreCase("All")) {
			    query += "gender = ?";
			} else {
			    query += "gender IS NOT NULL";
			}

			query += " AND ";

			if (!branch.equalsIgnoreCase("All")) {
			    query += "branch = ?";
			} else {
			    query += "branch IS NOT NULL";
			}

			query += " AND ";

			if (!category.equalsIgnoreCase("All")) {
			    query += "category = ?";
			} else {
			    query += "category IS NOT NULL";
			}

			query += " AND ";

			if (!entry.equalsIgnoreCase("All")) {
			    query += "lateral = ?";
			} else {
			    query += "lateral IS NOT NULL";
			}

			query += " AND ";

			if (!grad.equalsIgnoreCase("All")) {
			    query += "graduation = ?";
			} else {
			    query += "graduation IS NOT NULL";
			}

			PreparedStatement st = con.prepareStatement(query);

			int parameterIndex = 1;

			if (!type.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, type);
			}

			if (!gender.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, gender);
			}

			if (!branch.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, branch);
			}

			if (!category.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, category);
			}

			if (!entry.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, entry);
			}

			if (!grad.equalsIgnoreCase("All")) {
			    st.setString(parameterIndex++, grad);
			}

			ResultSet rs = st.executeQuery();

			int i=0;
			//RequestDispatcher dispatcher = null;
			
			if(rs.next()) {
				request.setAttribute("status", "success");
				out.println("<html><head><style>table{position: relative;left:300px;}p{position: relative;left:540px;top: 0px;font-size: 30px;}");
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
				out.println("<th>Name</th>");
				out.println("<th>Admission Type</th>");
				out.println("<th>Gender</th>");
				out.println("<th>Branch</th>");
				out.println("<th>Year</th>");
				out.println("<th>Category</th>");
				out.println("<th>Lateral</th>");
				out.println("<th>Graduation</th>");
				out.println("</tr>");
				while(rs.next()) {
					i = i+1;
					out.println("<tr>");
					out.println("<td>"+i+"</td>");
					out.println("<td>"+rs.getString("name")+"</td>");
					out.println("<td>"+rs.getString("admission_type")+"</td>");
					out.println("<td>"+rs.getString("gender")+"</td>");
					out.println("<td>"+rs.getString("branch")+"</td>");
					out.println("<td>"+rs.getString("year")+"</td>");
					out.println("<td>"+rs.getString("category")+"</td>");
					out.println("<td>"+rs.getString("lateral")+"</td>");
					out.println("<td>"+rs.getString("graduation")+"</td>");
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
				out.println("window.open('studentAdmission.jsp','_self');");
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
