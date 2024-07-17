<!doctype html>
<html lang="en">
  <head>
    <title>Career Guide</title>
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
          left: 750px;
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
          top: -28px;
          left: 260px;
        }
        #inf{
          font-size: 21px;
          padding-top: 24px;
        }
        .btn{
          position: relative;
          top: 240px;
          right: 100px;
          padding: 20px;
          margin-bottom: 24px;
          font-size: 18px;
          
        }
        .year-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 200px;
        }
        .branch-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 260px;
        }
        .type-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 320px;
        }
        .year1{
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
        .upload-data{
          padding: 24px;
          margin-bottom: 200px;
          margin-top: 40px;
          position: relative;
          top: 200px;
          left: 360px;
        }
        
        .fname{
          display: inline;
          position: relative;
          top: 100px;
          left: 80px;
        }
        
        .proname{
          display: inline;
          position: relative;
          top: 100px;
          left: 120px;
        }
        .date{
          display: inline;
          position: relative;
          top: 100px;
          left: 160px;
        }
        .host{
          position: relative;
          top: 160px;
          left: 80px;
        }
        .year{
          position: relative;
          top: 125px;
          left: 417px;
        }
        .branch{
          position: relative;
          top: 75px;
          left: 760px;
        }
        .type{
          position: relative;
          top: 20px;
          left: 1020px;
        }
        #upload-btn{
          position: relative;
          top: 200px;
          left: 580px;
        }
        
        #upload-fields{
          display: none;
        }
        #btn1{
          position: relative;
          left: -130px;
        }
        
    </style>
  </head>
  <body>
    <header>
        <div class="container mt-5">
            <span class="heading">Career <span style="color:white;">Guidances</span></span>
            <img class="logo-img" src="logo.png">
            <p class="para1"><span>&#8226;</span> Explore Your Future: Our career guidance section is designed to empower students on their journey to success. Discover a wealth of resources to help you make informed decisions about your professional path. From personalized career assessments and expert advice to internship opportunities and networking events, we provide the tools and support you need to navigate the world of work with confidence</p>
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
    	<h1 class="head1">Guest Lectures for Faculty of VVIT</h1>
      <p id="inf"><span>&#8226;</span> Delve into the dynamic world of Information Technology through our curated series of guest lectures from the academic year 2016-17.
    	 This exclusive table highlights a spectrum of renowned industry experts, thought leaders, and professionals who graced our campus to share their invaluable insights with faculty. 
    	 Gain a deeper understanding of the ever-evolving IT landscape and enrich your academic journey by accessing the wealth of knowledge imparted by these esteemed speakers.
    	</p>
    	<form action="http://localhost:8080/MiniProject/lectures" method="post">
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
	        <option value="MECH">MECH</option>
	      </select>
	    </div>
	    <div class="type-dropdown">
	      <label>Lecture Type : </label>
	      <select class="type1" name="type">
	        <option value="ALL">All</option>
	        <option value="External">External</option>
	        <option value="Internal">Internal</option>
	      </select>
	    </div>
	    <button type="submit" id="btn1" class="btn btn-outline-vvit">Fetch Result</button>
    </form>
    </div>
    
    <br><br><br>
    
    <form action="http://localhost:8080/MiniProject/uploadLectures" method="post">
    <div class="container mt-5" id="upload-fields">
    	<h3 class="upload-data">Enter the Publication details to upload</h3>
    	
	    	<div class="fname">
			  <label>Faculty Name : </label>
			  <input type="text" name="fname"/>
			</div>
			<div class="proname">
			  <label>Programme Name : </label>
			  <input type="text" name="pname"/>
			</div>
			
			<div class="date">
			  <label>Dates : </label>
			  <input type="text" name="sdate"/>
			</div>
			<div class="host">
			  <label>Host : </label>
			  <input type="text" name="shost"/>
			</div>
			<div class="year">
		      <label>Academic Year : </label>
		        <select class="year1" name="syear">
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
		      <select class="branch1" name="sbranch">
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
		      <select class="type1" name="stype">
		        <option value="External">External</option>
		        <option value="Internal">Internal</option>
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