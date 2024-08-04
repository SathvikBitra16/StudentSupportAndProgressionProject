<!doctype html>
<html lang="en">
  <head>
    <title>Student Grievances</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script src="js/bootstrap.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        *{
            
            font-family: 'Poppins', sans-serif;
        }
        body{ 
            overflow-x :hidden; 
        } 
        .heading {
            font-size: 48px;
            font-weight: 600;
            color: black;
            position: relative;
            top: -60px;
            left: 20px;
        }
        header {
            background-color: #cb6652;
            padding-top: 70px;
            height: 300px;
            position: relative;
            left: 0px;
        }
        .para1 {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 20px;
            font-weight: 600;
            position: relative;
            left: 40px;
            top: -50px;
        }
        h3 {
        	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 30px;
            font-weight: 600;
            position: relative;
            top: 50px;
            left: 360px;
        }
        .homebtn {
            margin-top: 10px;
            width: 10%;
            height: 50px;
            border-radius: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: 500;
            gap: 10px;
            border: 1px solid #ededef;
            background-color: white;
            cursor: pointer;
            transition: 0.2s ease-in-out;
            font-size: 20px;
            background-color: #E87E6A;
            position: relative;
            bottom: -10px;
            left: 10px;
        }
        .homebtn:hover {
            border-color: #E87E6A;
            transition: .5s;
        }
        .container {
            max-width: 700px;
            margin: auto;
            padding: 20px;
        }
        #insert-fields{
          display: none;
        }
        
        #show-data{
          display: none;
          position: relative;
          bottom: 50px;
        }
		
		
    </style>
  </head>
  <body>
    <header>
        <div>
            <span class="heading">Student <span style="color: rgb(117, 217, 239);">Grievances</span></span>
            <p class="para1"><span>&#8226;</span> This Module provides a streamlined process for students to report and resolve concerns related to their academic and campus life.
             This platform allows students<br>to submit grievances confidentially, track the progress of their complaints, and receive timely updates on resolutions.
            </p>
        </div>
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
    </header>
    
    <div id="insert-fields">
	    <h3><span style="color: #cb6652;">Submit any of your</span> <span style="color: rgb(49, 176, 234);"> problems and issues in college</span></h3>
	    <br><br>
	    <div class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
	        <form style="position: relative; bottom: 20px;" action="http://localhost:8080/MiniProject/queryInsert" method="post" class="mt-4">
	            <div class="flex flex-col space-y-4">
	                <div>
	                    <label class="text-black" for="year">Student's Year</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="year"/>
	                </div>
	                <div>
	                    <label class="text-black" for="branch">What's you're issue (Should be less than 50 words!!!)</label>
	                    <textarea rows="4" class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="branch">
	                        
	                    </textarea>
	                </div>
	                
	                <button style="width: 50%; position: relative; left: 160px; top: 10px;" class="btn btn-outline-vvit rounded-md px-4 py-2" type="submit">Submit Response</button>
	            </div>
	        </form>
	    </div>
	</div>
    
    
    
    <br><br><br>
    <div id="show-data">
	    <h3 style="position: relative; left: 500px;"><span style="color: #cb6652;">Submitted Problems</span> <span style="color: rgb(49, 176, 234);"> from Students</span></h3>
	    <div style="position: relative; top: 50px;" class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
	    	<%@ page import = "java.io.*,java.util.*,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>
		    <% 
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
			        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "system", "password");
			        Statement stmt = con.createStatement();
			        ResultSet rs = stmt.executeQuery("SELECT * FROM queries_table");
			        out.println("<html><head><style>table,tr,th,td{border: 1px solid black;}</style></head><body>");
			        out.println("<br/><br/><center><table cellspacing='0' cellpadding='5' border='1'>");
					out.println("<tr>");
					out.println("<th>S.No.</th>");
					out.println("<th>Student Year</th>");
					out.println("<th>Student Query</th>");
					out.println("</tr>");
					int i=0;
					while(rs.next()) {
						i = i+1;
						out.println("<tr>");
						out.println("<td>"+i+"</td>");
						out.println("<td>"+rs.getString("year")+"</td>");
						out.println("<td>"+rs.getString("query")+"</td>");
						out.println("</tr>");
					}
					out.println("</table><center></body></html>");
			        rs.close();
			        stmt.close();
			        con.close();
				} catch (Exception e) {
				    e.printStackTrace();
				}
			%>
	    </div>
	</div>
    
	 
	 <%
		response.setContentType("text/html");
		if(session.getAttribute("name") != null){
			out.println("<script>");
			out.println("document.getElementById('show-data').style.display='block'");
			out.println("</script>");	
		}
		else{
			out.println("<script>");
			out.println("document.getElementById('insert-fields').style.display='block'");
			out.println("</script>");
		}
	 %> 
	 
	 <script type="text/javascript">
	 	function home(){
	 		window.open('homePage.html',"_self");
	 	}
	 </script>
  </body>
</html>