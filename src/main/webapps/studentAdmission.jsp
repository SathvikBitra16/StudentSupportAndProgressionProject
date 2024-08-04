<!doctype html>
<html lang="en">
  <head>
    <title>Student Admissions</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
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
            top: -60px;
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
            bottom: 40px;
            left: 10px;
        }
        .homebtn:hover {
            border-color: #E87E6A;
            transition: .5s;
        }
        .container {
            max-width: 500px;
            margin: auto;
            padding: 20px;
        }
        #upload-fields{
        	display: none;
        }
		
		
        
    </style>
  </head>
  <body>
    <header>
        <div>
            <span class="heading">Student Admis<span style="color: white;">sions of VVIT</span></span>
            <!-- <img class="logo-img" src="logo.png"> -->
            <p class="para1"><span>&#8226;</span> All Admissions are provisional and subject to rules and regulations prescribed by the Government of Andhra Pradesh from time to time. The admission of any candidate even if made, will be cancelled if such admission is found to be made contrary to the above referred rules and regulations at any time. In such cases, the candidate shall not have any claim whatsoever in any manner.<br><br>
            </p>
        </div>
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
    </header>
    <h3><span style="color: #cb6652;">Details about Student</span> <span style="color: rgb(49, 176, 234);">Admissions based on given data</span></h3>
    <br><br>
    <div class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
        <form style="position: relative; bottom: 20px;" action="http://localhost:8080/MiniProject/admission" method="post" class="mt-4">
            <div class="flex flex-col space-y-4">
                <div>
                    <label class="text-black" for="year">Academic Year</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="year">
                        <option value="2016-17">2016-17</option>
                        <option value="2017-18">2017-18</option>
                        <option value="2018-19">2018-19</option>
                        <option value="2019-20">2019-20</option>
                        <option value="2020-21">2020-21</option>
                        <option value="2021-22">2021-22</option>
                        <option value="2022-23">2022-23</option>
                    </select>
                </div>
                <div>
                    <label class="text-black" for="graduation">Graduation</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="graduation">
                        <option value="ALL">All</option>
                        <option value="UG">UG</option>
                        <option value="PG">PG</option>
                    </select>
                </div>
                <div>
                    <label class="text-black" for="branch">Branch</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="branch">
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
                        <option value="MECH">MECH</option>
                    </select>
                </div>
                <div>
                    <label class="text-black" for="type">Type</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="type">
                        <option value="ALL">All</option>
                        <option value="CAT A">Category A</option>
                        <option value="CAT B">Category B</option>
                        <option value="NRI">NRI</option>
                    </select>
                </div>
                <div>
                    <label class="text-black" for="category">Category</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="category">
                        <option value="ALL">All</option>
                        <option value="OC">OC</option>
                        <option value="BC_A">BC_A</option>
                        <option value="BC_B">BC_B</option>
                        <option value="BC_C">BC_C</option>
                        <option value="BC_D">BC_D</option>
                        <option value="BC_E">BC_E</option>
                        <option value="SC">SC</option>
                        <option value="ST">ST</option>
                    </select>
                </div>
                <div>
                    <label class="text-black" for="gender">Gender</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="gender">
                        <option value="ALL">All</option>
                        <option value="M">Male</option>
                        <option value="F">Female</option>
                    </select>
                </div>
                <div>
                    <label class="text-black" for="entry">Lateral Entry</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="entry">
                        <option value="ALL">All</option>
                        <option value="No">First Year Entry</option>
                        <option value="Yes">Lateral Entry</option>
                    </select>
                </div>
                <button style="width: 40%; position: relative; left: 130px; top: 10px;" class="btn btn-outline-vvit rounded-md px-4 py-2" type="submit">Fetch Result</button>
            </div>
        </form>
    </div>
    <div id="upload-fields">
	    <h3 style="position: relative; left:400px;"><span style="color: #cb6652;">Enter the Student</span> <span style="color: rgb(49, 176, 234);"> Admission details to upload</span></h3>
	    <br><br>
	    <div class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
	        <form  style="position: relative; bottom: 20px;" action="http://localhost:8080/MiniProject/uploadAdmissions" method="post" class="mt-4">
	            <div class="flex flex-col space-y-4">
	                <div>
	                    <label class="text-black" for="stuname">Student Name</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="stuname"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuyear">Academic Year</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="stuyear">
	                        <option value="2016-17">2016-17</option>
	                        <option value="2017-18">2017-18</option>
	                        <option value="2018-19">2018-19</option>
	                        <option value="2019-20">2019-20</option>
	                        <option value="2020-21">2020-21</option>
	                        <option value="2021-22">2021-22</option>
	                        <option value="2022-23">2022-23</option>
	                    </select>
	                </div>
	                <div>
	                    <label class="text-black" for="stugraduation">Graduation</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="stugraduation">
	                        <option value="UG">UG</option>
	                        <option value="PG">PG</option>
	                    </select>
	                </div>
	                <div>
	                    <label class="text-black" for="stubranch">Branch</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="stubranch">
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
	                <div>
	                    <label class="text-black" for="stutype">Type</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="stutype">
	                        <option value="CAT A">Category A</option>
	                        <option value="CAT B">Category B</option>
	                        <option value="NRI">NRI</option>
	                    </select>
	                </div>
	                <div>
	                    <label class="text-black" for="stucategory">Category</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="stucategory">
	                        <option value="OC">OC</option>
	                        <option value="BC_A">BC_A</option>
	                        <option value="BC_B">BC_B</option>
	                        <option value="BC_C">BC_C</option>
	                        <option value="BC_D">BC_D</option>
	                        <option value="BC_E">BC_E</option>
	                        <option value="SC">SC</option>
	                        <option value="ST">ST</option>
	                    </select>
	                </div>
	                <div>
	                    <label class="text-black" for="stugender">Gender</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="stugender">
	                        <option value="M">Male</option>
	                        <option value="F">Female</option>
	                    </select>
	                </div>
	                <div>
	                    <label class="text-black" for="stuentry">Lateral Entry</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="stuentry">
	                        <option value="No">First Year Entry</option>
	                        <option value="Yes">Lateral Entry</option>
	                    </select>
	                </div>
	                <button style="width: 40%; position: relative; left: 130px; top: 10px;" class="btn btn-outline-vvit rounded-md px-4 py-2" type="submit">Upload</button>
	            </div>
	        </form>
	    </div>
    </div>
	 
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