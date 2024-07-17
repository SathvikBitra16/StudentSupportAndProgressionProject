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
          left: 300px;
        }
        .course-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 330px;
        }
        .branch-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 360px;
        }
        .type-dropdown{
          display: inline;
          position: relative;
          top: 100px;
          left: 390px;
        }
        .category-dropdown{
          position: relative;
          top: 200px;
          left: 350px;
        }
        .gender-dropdown{
          position: relative;
          top: 150px;
          left: 600px;
        }
        .entry-dropdown{
          position: relative;
          top: 100px;
          left: 850px;
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
        .category1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        .gender1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        .entry1{
          font-size: 18px;
          font-family:'Segoe UI'; 
          border-radius: 6px;
          padding: 12px;
        }
        .logo-img{
          width: 200px;
          height: 160px;
          position: relative;
          left: 500px;
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
          left: 670px;
          padding: 20px;
          margin-bottom: 24px;
          font-size: 18px;
          
        }
        .nav-item .nav-link{
          color: black;
          position: relative;
          bottom: 88px;
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
        
        .upload-data{
          padding: 24px;
          margin-bottom: 200px;
          margin-top: 40px;
          position: relative;
          top: 200px;
          left: 320px;
        }
        
        .name{
          display: inline;
          position: relative;
          top: 100px;
          left: 80px;
        }
        
        .year{
          display: inline;
          position: relative;
          top: 100px;
          left: 120px;
        }
        .course{
          display: inline;
          position: relative;
          top: 100px;
          left: 160px;
        }
        .branch{
          display: inline;
          position: relative;
          top: 100px;
          left: 200px;
        }
        .type{
          position: relative;
          top: 250px;
          left: 120px;
        }
        .category{
          position: relative;
          top: 200px;
          left: 350px;
        }
        .gender{
          position: relative;
          top: 150px;
          left: 600px;
        }
        .entry{
          position: relative;
          top: 100px;
          left: 850px;
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
            <span class="heading">Student Admis<span style="color: white;">sions of VVIT</span></span>
            <img class="logo-img" src="logo.png">
            <p class="para1"><span>&#8226;</span> All Admissions are provisional and subject to rules and regulations prescribed by the Government of Andhra Pradesh from time to time. The admission of any candidate even if made, will be cancelled if such admission is found to be made contrary to the above referred rules and regulations at any time. In such cases, the candidate shall not have any claim whatsoever in any manner.<br><br>
            </p>
        </div>
        <div class="container mt-5" id="cont1">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link" href="homePage.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="#">Student Admissions</a>
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
    <h3><span style="color: #cb6652;">Details about Student</span> <span style="color: rgb(49, 176, 234);">Admissions based on given data.</span></h3>
    <form action="http://localhost:8080/MiniProject/admission" method="post">
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
	    <div class="course-dropdown">
	      <label>Graduation : </label>
	      <select class="course1" name="graduation">
	        <option value="ALL">All</option>
	        <option value="UG">UG</option>
	        <option value="PG">PG</option>
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
	        <option value="INF">INF</option>
	        <option value="MEC">MECH</option>
	      </select>
	    </div>
	    
	    <div class="type-dropdown">
	      <label>Type : </label>
	      <select class="type1" name="type">
	        <option value="ALL">All</option>
	        <option value="CAT A">Category A</option>
	        <option value="CAT B">Category B</option>
	        <option value="NRI">NRI</option>
	      </select>
	    </div>
	    <div class="category-dropdown">
	      <label>Category : </label>
	      <select class="category1" name="category">
	        <option value="ALL">All</option>
	        <option value="OC">OC</option>
	        <option value="BC_A">BC_A</option>
	        <option value="BC_B">BC_B</option>
	        <option value="BC_C">BC_C</option>
	        <option value="BC_D">BC_D</option>
	        <option value="BC_D">BC_D</option>
	        <option value="SC">SC</option>
	        <option value="ST">ST</option>
	      </select>
	    </div>
	    <div class="gender-dropdown">
	      <label>Gender : </label>
	      <select class="gender1" name="gender">
	        <option value="ALL">All</option>
	        <option value="M">Male</option>
	        <option value="F">Female</option>
	      </select>
	    </div>
	    <div class="entry-dropdown">
	      <label>Lateral Entry : </label>
	      <select class="entry1" name="entry">
	        <option value="ALL">All</option>
	        <option value="No">First Year Entry</option>
	        <option value="Yes">Lateral Entry</option>
	      </select>
	    </div>
	    
	    <button type="submit" id="btn1" class="btn btn-outline-vvit">Fetch Result</button>
    </form>
    
    <br><br><br>
    <form action="http://localhost:8080/MiniProject/uploadAdmissions" method="post">
    <div class="container mt-5" id="upload-fields">
    	<h3 class="upload-data">Enter the Student Admission details to upload</h3>
    	
	    	<div class="name">
			  <label>Student Name : </label>
			  <input type="text" name="stuname"/>
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
		    <div class="course">
		      <label>Graduation : </label>
		      <select class="course1" name="stugraduation">
		        
		        <option value="UG">UG</option>
		        <option value="PG">PG</option>
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
		        <option value="CAT A">Category A</option>
		        <option value="CAT B">Category B</option>
		        <option value="NRI">NRI</option>
		      </select>
		    </div>
		    <div class="category">
		      <label>Category : </label>
		      <select class="type1" name="stucategory">
		        <option value="OC">OC</option>
		        <option value="BC_A">BC_A</option>
		        <option value="BC_B">BC_B</option>
		        <option value="BC_D">BC_D</option>
		        <option value="BC_E">BC_E</option>
		        <option value="SC">SC</option>
		        <option value="ST">ST</option>
		      </select>
		    </div>
		    <div class="gender">
		      <label>Gender : </label>
		      <select class="type1" name="stugender">
		        <option value="M">Male</option>
		        <option value="F">Female</option>
		      </select>
		    </div>
	      <div class="entry">
	        <label>Entry Type : </label>
	        <select class="type1" name="stuentry">
	  
	          <option value="No">1st Year Entry</option>
	          <option value="Yes">Lateral Entry</option>
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
