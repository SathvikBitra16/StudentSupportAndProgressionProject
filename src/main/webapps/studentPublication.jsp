<!doctype html>
<html lang="en">
  <head>
    <title>Publications</title>
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
    </style>
  </head>
  <body>
    <header>
        <div>
            <span class="heading">Student <span style="color:white;">Publications</span></span>
            <p class="para1"><span>&#8226;</span> Empowering Voices, Inspiring Minds: Explore our vibrant world of student publications, where creativity, intellect, and expression converge. 
            Our student<br> publications serve as a dynamic platform for the diverse talents and perspectives within our college community.
    	     Join us in celebrating the power of student<br>expression and the boundless creativity that defines our academic community.
    	</p>
        </div>
        <input class="homebtn" type="button" value="Home" onclick="home()"/>
    </header>
    <h3><span style="color: #cb6652;">Details about Student </span> <span style="color: rgb(49, 176, 234);">Publications of VVIT</span></h3>
    <br><br>
    <div class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
        <form style="position: relative; bottom: 20px;" action="http://localhost:8080/MiniProject/publication" method="post" class="mt-4">
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
                
                <button style="width: 40%; position: relative; left: 130px; top: 10px;" class="btn btn-outline-vvit rounded-md px-4 py-2" type="submit">Fetch Result</button>
            </div>
        </form>
    </div>
    <div id="upload-fields">
	    <h3 style="position: relative; left:460px;"><span style="color: #cb6652;">Enter the Publication </span> <span style="color: rgb(49, 176, 234);">details to upload</span></h3>
	    <br><br>
	    <div class="container mt-4 bg-white rounded-lg p-4 shadow-lg">
	        <form  style="position: relative; bottom: 20px;" action="http://localhost:8080/MiniProject/uploadPublications" method="post" class="mt-4">
	            <div class="flex flex-col space-y-4">
	                <div>
	                    <label class="text-black" for="stuname">Student Name</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="stuname"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuname">Student Roll No.</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="stunum"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuname">Title</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="stutitle"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuname">Journal name</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="jouname"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuname">Volume Issue</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="volume"/>
	                </div>
	                <div>
	                    <label class="text-black" for="stuname">Issn No.</label>
	                    <input class="w-full bg-gray-100 rounded-md border-gray-300 text-black px-2 py-1" type="text" name="issnum"/>
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
	 </script>]
	 <footer>
	 </footer>
      </body>
</html>