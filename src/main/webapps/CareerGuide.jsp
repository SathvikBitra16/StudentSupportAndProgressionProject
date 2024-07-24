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
          left: 160px;
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
        
        .year{
          position: relative;
          top: 125px;
          left: 82px;
        }
        .branch{
          position: relative;
          top: 75px;
          left: 515px;
        }
        
        .audi{
		  position: relative;
		  top: 170px;
		  left: 820px;
		}
        #upload-btn{
          position: relative;
          top: 200px;
          left: 530px;
        }
        
        #upload-fields{
          display: none;
        }
        #btn1{
          position: relative;
          left: 530px;
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
          bottom: 100px;
          left:5px;
          background-color: #E87E6A;
        }
        
        .homebtn:hover{
  		  border-color: #E87E6A;
     	  transition: .5s;
		}
		
		footer{
		  margin-bottom: 240px;
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
		  cursor: pointer;
		  transition: 0.2s ease-in-out;
		  position: relative;
		  left: 540px;
		}

		.btn:hover {
		  border: 1px solid #2d79f3;
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
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
    </header>
    <div class="container mt-5">
    	<h1 class="head1">Guest Lectures and Workshops for Students of VVIT</h1>
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
	      <label>Target Audience : </label>
	      <select class="type1" name="type">
	        <option value="ALL">All</option>
	        <option value="2nd year students">2nd year students</option>
	        <option value="3rd year students">3rd year students</option>
	        <option value="4th year students">4th year students</option>
	      </select>
	    </div>
	    <button type="submit" id="btn1" class="btn btn-outline-vvit">Fetch Result</button>
    </form>
    </div>
    
    <br><br><br>
    
    <form action="http://localhost:8080/MiniProject/uploadLectures" method="post">
    <div class="container mt-5" id="upload-fields">
    	<h3 class="upload-data">Enter the Guest Lecture details to upload</h3>
    	
	    	<div class="fname">
			  <label>Resource Persons : </label>
			  <input type="text" name="fname"/>
			</div>
			<div class="proname">
			  <label>Title : </label>
			  <input type="text" name="pname"/>
			</div>
			
			<div class="date">
			  <label>Dates : </label>
			  <input type="text" name="sdate"/>
			</div>
			<div class="audi">
			  <label>Target Audience : </label>
			  <input type="text" name="taudi"/>
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