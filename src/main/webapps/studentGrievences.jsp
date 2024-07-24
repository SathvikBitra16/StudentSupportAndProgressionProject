<!doctype html>
<html lang="en">
  <head>
    <title>Student Grievances</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="js/bootstrap.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        *{
            
            font-family: 'Poppins', sans-serif;
        }
        body{ 
            overflow-x :hidden; 
        } 
        .heading{
            font-size: 48px;
            font-weight: 600;
            color: black;
            position: relative;
            top: -160px;
            left: -100px;
        }
        header{
          background-color: #cb6652;
          padding-top: 70px;
          height: 400px;
          position: relative;
          left: 0px;
        }
        .year-div{
          position: relative;
          left: -30px;
          top: 100px
        }
        .query-div{
          position: relative;
          left: -30px;
          top: 150px;
        }
        #query{
		  position: relative;
		  left: 490px;
		  top: -20px;
		}
        .logo-img{
          width: 200px;
          height: 160px;
          position: relative;
          left: 700px;
          bottom: -100px;
        }
        .para1{
          font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          font-size: 20px;
          font-weight: 600;
          position: relative;
          left: -90px;
          top: -160px;
        }
        .btn{
          position: relative;
          top: 240px;
          left: 0px;
          padding: 20px;
          margin-bottom: 24px;
          font-size: 18px;
        }
        label{
          font-size: 18px;
          margin-right: 5px;
        }
        h3{
          position: relative;
          top: 50px;
          left: 360px;
        }
        .insert-data{
          postion: relative;
          left: -30px;
        }
        
        .show-head{
          padding: 24px;
          margin-bottom: 200px;
          margin-top: 40px;
          position: relative;
          top: 200px;
          left: 360px;
        }
        
        
        #insert-fields{
          display: none;
        }
        
        #show-data{
          display: none;
          position: relative;
          bottom: 200px;
        }
        
		.homebtn{
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
          border-radius: 10px;
          font-size: 20px;
          position: relative;
          bottom: 20px;
          left:5px;
          background-color: #E87E6A;
        }
        
        .homebtn:hover{
  		  border-color: #E87E6A;
     	  transition: .5s;
		}
		
		#btn1{
		  position: relative;
		  left: 540px;
		  bottom: 20px;
		}
		
		
    </style>
  </head>
  <body>
    <header>
        <div class="container mt-5">
            <span class="heading">Student <span style="color: rgb(117, 217, 239);">Grievances</span></span>
            <img class="logo-img" src="logo.png">
            <p class="para1"><span>&#8226;</span> This Module provides a streamlined process for students to report and resolve concerns related to their academic and campus life.
             This platform allows students to submit grievances confidentially, track the progress of their complaints, and receive timely updates on resolutions.
            </p>
        </div>
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
    </header>
    
    <div class="container mt-5" id="insert-fields">
    	<h3 class="insert-data">Give out your grievance/problem and mention your year for necessary action.</h3>
	    <form action="http://localhost:8080/MiniProject/queryInsert" method="post">
		    <div class="year-div">
		      <label>Student's Year : </label>
		        <input type="text" name="year"/>
		    </div>
		    <div class="query-div">
		      <label>What's you're issue (Should be less than 50 words!!!) : </label>
		      <textarea maxlength="50" id="query" rows="4" cols="100" name="query"></textarea>
		      </div>
		    <button type="submit" id="btn1" class="btn btn-outline-vvit">Submit Response</button>
	    </form>
    </div>
    
    <br><br><br>
    
    <div class="container mt-5" id="show-data">
    	<h3 class="show-head">Submitted Problems from Students</h3>
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