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
        * {
            font-family: 'Poppins', sans-serif;
        }
        body {
            overflow-x: hidden;
        }
        .heading {
            font-size: 48px;
            font-weight: 600;
            color: black;
            position: relative;
            top: -100px;
            left: -100px;
        }
        header {
            background-color: #cb6652;
            padding-top: 70px;
            height: 300px;
            position: relative;
            left: 0px;
        }
        .year-dropdown, .course-dropdown, .branch-dropdown, .type-dropdown, .category-dropdown, .gender-dropdown, .entry-dropdown {
            margin: 20px;
            display: inline-block;
        }
        .year1, .course1, .branch1, .type1, .category1, .gender1, .entry1 {
            font-size: 18px;
            font-family: 'Segoe UI';
            border-radius: 6px;
            padding: 12px;
        }
        .para1 {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 20px;
            font-weight: 600;
            position: relative;
            left: -90px;
            top: -80px;
        }
        .nav-item .nav-link {
            color: black;
            position: relative;
            bottom: 88px;
            left: -120px;
        }
        label {
            font-size: 18px;
            margin-right: 5px;
        }
        h3 {
            position: relative;
            top: 50px;
            left: 360px;
        }
        .upload-data {
            padding: 24px;
            margin-bottom: 200px;
            margin-top: 40px;
            position: relative;
            top: 200px;
            left: 320px;
        }
        .name, .year, .course, .branch, .type, .category, .gender, .entry {
            display: inline-block;
            margin: 20px;
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
        }
        .homebtn:hover {
            border-color: #E87E6A;
            transition: .5s;
        }
        .btn {
		  margin-top: 10px;
		  width: 20%;
		  height: 50px;
		  border-radius: 10px;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  font-weight: 500;
		  gap: 10px;
		  border: 1px solid #ededef;
		  background-color: white;
		  transition: 0.2s ease-in-out;
		  position: relative;
		  left: 540px;
		}
		.btn:hover {
		  border: 1px solid #2d79f3;
		}
        #upload-fields {
            display: none;
        }
        footer {
            margin-bottom: 40px;
        }
		
		
        
    </style>
  </head>
  <body>
    <header>
        <div class="container mt-5">
            <span class="heading">Student Admis<span style="color: white;">sions of VVIT</span></span>
            <!-- <img class="logo-img" src="logo.png"> -->
            <p class="para1"><span>&#8226;</span> All Admissions are provisional and subject to rules and regulations prescribed by the Government of Andhra Pradesh from time to time. The admission of any candidate even if made, will be cancelled if such admission is found to be made contrary to the above referred rules and regulations at any time. In such cases, the candidate shall not have any claim whatsoever in any manner.<br><br>
            </p>
        </div>
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
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
	    <button style="position: relative; left:10px;" type="submit" id="btn1" class="btn btn-outline-vvit">Fetch Result</button>
	    
	 </form>
    <br><br><br>
    <form action="http://localhost:8080/MiniProject/uploadAdmissions" method="post">
    <div style="position: relative; top: -90px;" class="container mt-5" id="upload-fields">
    	<h3 class="upload-data">Enter the Student Admission details to upload</h3>
    	
	    	<div class="name" style="position: relative; top: 10px;">
			  <label>Student Name : </label>
			  <input type="text" name="stuname"/>
			</div>
			<div class="year" style="position: relative; top: 10px;">
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
		    <div class="course" style="position: relative; top: 10px;">
		      <label>Graduation : </label>
		      <select class="course1" name="stugraduation">
		        
		        <option value="UG">UG</option>
		        <option value="PG">PG</option>
		      </select>
		    </div>
		    <div class="branch" style="position: relative; top: 10px;">
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
		    <div class="type" style="position: relative; top: 80px;">
		      <label>Type : </label>
		      <select class="type1" name="stutype">
		        <option value="CAT A">Category A</option>
		        <option value="CAT B">Category B</option>
		        <option value="NRI">NRI</option>
		      </select>
		    </div>
		    <div class="category" style="position: relative; top: 30px;">
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
		    <div class="gender" style="position: relative; top: -20px;">
		      <label>Gender : </label>
		      <select class="type1" name="stugender">
		        <option value="M">Male</option>
		        <option value="F">Female</option>
		      </select>
		    </div>
	      <div class="entry" style="position: relative; top: -70px;">
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
	 
	 <script type="text/javascript">
	 	function home(){
	 		window.open('homePage.html',"_self");
	 	}
	 </script>
    
    
	<footer>
	 </footer>
    
  </body>
</html>