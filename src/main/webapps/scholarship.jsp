<!doctype html>
<html lang="en">
  <head>
    <title>Student Admissions</title>
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
        .year-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 360px;
        }
        .course-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 370px;
        }
        .branch-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 430px;
        }
        .type-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 480px;
        }
        .year1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        .course1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        .branch1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        .type1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
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
        .nav-item .nav-link{
          color: black;
          position: relative;
          bottom: 0px;
          left: -120px;
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
        #cont1{
        	position: relative;
        	bottom : 58px;
        }
        .upload-data{
          padding: 24px;
          margin-bottom: 200px;
          margin-top: 40px;
          position: relative;
          top: 200px;
          left: 360px;
        }
        
        .name{
          display: inline;
          position: relative;
          top: 100px;
          left: 80px;
        }
        
        .stuid{
          display: inline;
          position: relative;
          top: 100px;
          left: 120px;
        }
        .syear{
          display: inline;
          position: relative;
          top: 100px;
          left: 160px;
        }
        .year{
          position: relative;
          top: 200px;
          left: 190px;
        }
        .branch{
          position: relative;
          top: 153px;
          left: 550px;
        }
        .type{
          position: relative;
          top: 103px;
          left: 800px;
        }
        
        #upload-btn{
          position: relative;
          top: 200px;
          left: 580px;
        }
        
        #upload-fields{
          display: none;
        }
        
        .homebtn{
          padding: 16px;
          border-radius: 10px;
          font-size: 20px;
          position: relative;
          bottom: 100px;
          left:5px;
          background-color: #E87E6A;
        }
        
        .homebtn:hover{
  		  border-color: #E87E6A;
     	  transition: .5s;
		}
    </style>
  </head>
  <body>
    <header>
        <div class="container mt-5">
            <span class="heading">Scholarships of <span style="color: rgb(117, 217, 239);">VVIT</span></span>
            <img class="logo-img" src="logo.png">
            <p class="para1"><span>&#8226;</span> Our VVIT provides various types of Scholarships to most of our students to encourage and improve them.
            This table serves as an organized repository of scholarship data, allowing for efficient tracking and analysis of financial aid distribution. It helps in understanding the allocation of resources, the diversity of scholarship recipients, and the correlation between academic performance and financial support.
            </p>
        </div>
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
    </header>
    <h3><span style="color: #cb6652;">Details about Student's</span> <span style="color: rgb(49, 176, 234);">Scholorships based on given data.</span></h3>
    <form action="http://localhost:8080/MiniProject/scholarship" method="post">
	    <div class="year-dropdown">
	      <label>Year : </label>
	        <select class="year1" name="year">
		          <option value="2016-17">2016-17</option>
		          <option value="2017-18">2017-18</option>
		          <option value="2018-19">2018-19</option>
		          <option value="2019-20">2019-20</option>
		          <option value="2020-21">2020-21</option>
		          <option value="2021-22">2021-22</option>
		          <option value="2022-23">2022-23</option>
		        </select>
	    </div>
	    <div class="branch-dropdown">
	      <label>Branch : </label>
	      <select class="branch1" name="branch">
		        <option value="ALL">All</option>
		        <option value="AID">AID</option>
		        <option value="AIM">AIM</option>
		        <option value="CIC">CIC</option>
		        <option value="CIV">CIV</option>
		        <option value="CSE">CSE</option>
		        <option value="CSM">CSM</option>
		        <option value="CSO">CSO</option>
		        <option value="ECE">ECE</option>
		        <option value="EEE">EEE</option>
		        <option value="IT">INF</option>
		        <option value="MECH">MECH</option>
		      </select>
	    </div>
	    <div class="type-dropdown">
	      <label>Type : </label>
	      <select class="type1" name="type">
	        <option value="JVD">JVD</option>
	        <option value="RTF">RTF</option>
	        <option value="Institution">Scholarship by Institution</option>
	      </select>
	    </div>
	    <button type="submit" id="btn1" class="btn btn-outline-vvit">Fetch Result</button>
    </form>
    
    <br><br><br>
    
    <form action="http://localhost:8080/MiniProject/uploadScholarships" method="post">
    <div class="container mt-5" id="upload-fields">
    	<h3 class="upload-data">Enter the Scholarship details to upload</h3>
    	
	    	<div class="name">
			  <label>Student Name : </label>
			  <input type="text" name="stuname"/>
			</div>
			<div class="stuid">
			  <label>Student Id : </label>
			  <input type="text" name="stunum"/>
			</div>
			<div class="syear">
			  <label>Student Year : </label>
			  <input type="text" name="styear"/>
			</div>
			<div class="year">
		      <label>Academic Year : </label>
		        <select class="year1" name="stuyear">
		          <option value="2016-17">2016-17</option>
		          <option value="2017-18">2017-18</option>
		          <option value="2018-19">2018-19</option>
		          <option value="2019-20">2019-20</option>
		          <option value="2020-21">2020-21</option>
		          <option value="2021-22">2021-22</option>
		          <option value="2022-23">2022-23</option>
		        </select>
		    </div>
		    <div class="branch">
		      <label>Branch : </label>
		      <select class="branch1" name="stubranch">
		        <option value="AID">AID</option>
		        <option value="AIM">AIM</option>
		        <option value="CIC">CIC</option>
		        <option value="CIV">CIV</option>
		        <option value="CSE">CSE</option>
		        <option value="CSM">CSM</option>
		        <option value="CSO">CSO</option>
		        <option value="ECE">ECE</option>
		        <option value="EEE">EEE</option>
		        <option value="INF">INF</option>
		        <option value="MECH">MECH</option>
		      </select>
		    </div>
		    <div class="type">
		      <label>Type : </label>
		      <select class="type1" name="stutype">
		      	<option value="JVD">JVD</option>
	        	<option value="RTF">RTF</option>
	       	 	<option value="Institution">Scholarship by Institution</option>
		      </select>
		    </div>
		 <button type="submit" id="upload-btn" class="btn btn-outline-vvit">Insert Data</button>
	 	</div>
	 </form>
	 
	 <%
		response.setContentType("text/html");
		if(session.getAttribute("name") != null){
			out.println("<script>");
			out.println("document.getElementById('upload-fields').style.display='block'");
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