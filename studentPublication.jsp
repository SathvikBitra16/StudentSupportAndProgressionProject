<!doctype html>
<html lang="en">
  <head>
    <title>Publications</title>
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
        
        .logo-img{
          width: 200px;
          height: 160px;
          position: relative;
          left: 650px;
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
        
        .nav-item .nav-link{
          color: black;
          position: relative;
          bottom: 58px;
          left: -120px;
        }
        label{
          font-size: 18px;
          margin-right: 5px;
        }
        .head1{
          position: relative;
          top: -40px;
          left: 400px;
        }
        #inf{
          font-size: 21px;
          padding-top: 24px;
        }
        tr,th,td{
          border: 1px solid black;
        }
        .year-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 350px;
          padding: 24px;
        }
        .branch-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 410px;
          padding: 24px;
        }
        .year1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        label{
          font-size: 24px;
          margin-right: 5px;
        }
        .branch1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        .btn{
          position: relative;
          top: 240px;
          padding: 20px;
          margin-bottom: 24px;
          font-size: 18px; 
        }
        #p1{
          font-size: 24px;
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
          left: 10px;
        }
        
        .stuid{
          display: inline;
          position: relative;
          top: 100px;
          left: 50px;
        }
        .title{
          display: inline;
          position: relative;
          top: 100px;
          left: 90px;
        }
        .jname{
          position: relative;
          top: 160px;
          left: 10px;
        }
        .vol{
          display: inline;
          position: relative;
          top: 125px;
          left: 500px;
        }
        .issno{
          display: inline;
          position: relative;
          top: 125px;
          left: 580px;
        }
        .year{
          position: relative;
          top: 200px;
          left: 330px;
        }
        .branch{
          position: relative;
          top: 149px;
          left: 750px;
        }
        
        #upload-btn{
          position: relative;
          top: 200px;
          left: 580px;
        }
        
        #upload-fields{
          display: none;
        }
    </style>
  </head>
  <body>
    <header>
        <div class="container mt-5">
            <span class="heading">Student <span style="color:white;">Publications</span></span>
            <img class="logo-img" src="logo.png">
            <p class="para1"><span>&#8226;</span> Empowering Voices, Inspiring Minds: Explore our vibrant world of student publications, where creativity, intellect, and expression converge. 
            Our student publications serve as a dynamic platform for the diverse talents and perspectives within our college community.
    	     Join us in celebrating the power of student expression and the boundless creativity that defines our academic community.
    	</p>
        </div>
        <div class="container mt-5" id="cont1">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link" href="homePage.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="studentAdmission.jsp">Student Admissions</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="scholarship.jsp">Scholarships</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Fee Structure</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Results</a>
            </li>
            </ul>
        </div>
    </header>
    <div class="container mt-5">
    	<h1 class="head1">Student Publications of VVIT</h1>
    	<p id="p1"><span>&#8226;</span> Select the required year and branch and get the details about Student Publications of VVIT.</p>
    	<form action="http://localhost:8080/MiniProject/publication" method="post">
	    <div class="year-dropdown">
	      <label>Academic Year : </label>
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
	        <option value="MEC">MECH</option>
	      </select>
	    </div>
	    
	    <button type="submit" id="btn1" class="btn btn-outline-vvit">Fetch Result</button>
    </form>
    </div>
     <br><br><br>
    
    <form action="http://localhost:8080/MiniProject/uploadPublications" method="post">
    <div class="container mt-5" id="upload-fields">
    	<h3 class="upload-data">Enter the Publication details to upload</h3>
    	
	    	<div class="name">
			  <label>Student Name : </label>
			  <input type="text" name="stuname"/>
			</div>
			<div class="stuid">
			  <label>Student Roll No. : </label>
			  <input type="text" name="stunum"/>
			</div>
			<div class="title">
			  <label>Title : </label>
			  <input type="text" name="stutitle"/>
			</div>
			<div class="jname">
			  <label>Journal name : </label>
			  <input type="text" name="jouname"/>
			</div>
			<div class="vol">
			  <label>Vol Issue : </label>
			  <input type="text" name="volume"/>
			</div>
			<div class="issno">
			  <label>Issn No. : </label>
			  <input type="text" name="issnum"/>
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
      </body>
</html>