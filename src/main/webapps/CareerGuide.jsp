<!doctype html>
<html lang="en">
  <head>
    <title>Career Guide</title>
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
        .head1{
          position: relative;
          top: -28px;
          left: 160px;
        }
        #inf{
          font-size: 21px;
          padding-top: 24px;
        }
        
		
    </style>
  </head>
  <body>
    <header>
        <div>
            <span class="heading">Career <span style="color:white;">Guidances</span></span>

            <p class="para1"><span>&#8226;</span> Explore Your Future: Our career guidance section is designed to empower students on their journey to success. Discover a wealth of resources to help you make informed decisions about your professional path. From personalized career assessments and expert advice to internship opportunities and networking events, we provide the tools and support you need to navigate the world of work with confidence</p>
        </div>
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
    </header>
    <h3><span style="color: #cb6652;">Guest Lectures and Workshops</span> <span style="color: rgb(49, 176, 234);"> for Students of VVIT</span></h3>
    <br><br>
    <div class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
        <form style="position: relative; bottom: 20px;" action="http://localhost:8080/MiniProject/lectures" method="post" class="mt-4">
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
                        <option value="IT">INF</option>
                        <option value="MECH">MECH</option>
                    </select>
                </div>
                <div>
                    <label class="text-black" for="type">Target Audience</label>
                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="type">
						<option value="ALL">All</option>
					    <option value="2nd year students">2nd year students</option>
					    <option value="3rd year students">3rd year students</option>
				        <option value="4th year students">4th year students</option>
                    </select>
                </div>
                
                <button style="width: 40%; position: relative; left: 130px; top: 10px;" class="btn btn-outline-vvit rounded-md px-4 py-2" type="submit">Fetch Result</button>
            </div>
        </form>
    </div>
    <div id="upload-fields">
	    <h3 style="position: relative; left:460px;"><span style="color: #cb6652;">Enter the Guest Lecture </span> <span style="color: rgb(49, 176, 234);">details to upload</span></h3>
	    <br><br>
	    <div class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
	        <form  style="position: relative; bottom: 20px;" action="http://localhost:8080/MiniProject/uploadLectures" method="post" class="mt-4">
	            <div class="flex flex-col space-y-4">
	                <div>
	                    <label class="text-black" for="stuname">Resource Persons</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="fname"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuname">Title</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="pname"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuname">Dates</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="sdate"/>
	                </div>
	                <div>
	                    <label class="text-black" for="taudi">Target Audience</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="taudi">
					        <option value="2nd year students">2nd year students</option>
					        <option value="3rd year students">3rd year students</option>
					        <option value="4th year students">4th year students</option>
	                    </select>
	                </div>
	                <div>
	                    <label class="text-black" for="stuyear">Academic Year</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="syear">
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
	                    <label class="text-black" for="stubranch">Branch</label>
	                    <select class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" name="sbranch">
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