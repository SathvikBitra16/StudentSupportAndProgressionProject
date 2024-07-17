package JavaFiles;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet(name = "logout", urlPatterns = { "/logout" })
public class logout extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		if(request.getSession(false) != null) {
			request.getSession(false).invalidate();
			out.println("<script>");
			out.println("alert('You have logged out!!!');");
			out.println("window.open('homePage.html','_self');");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('No login detected!!!');");
			out.println("window.open('homePage.html','_self');");
			out.println("</script>");
		}	
		
		
	}	
}
