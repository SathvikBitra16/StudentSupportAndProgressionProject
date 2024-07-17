<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="Passstyle.css">
  </head>
  <body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div class="center">
      <button id="back-btn">
        <i class="bx bx-arrow-back" id="icon"></i>
        <span>Back</span>
      </button>
      <!--  <img id="img1" src="logo.png">-->
      <h1>Forgot Password</h1>
      <form action="http://localhost:8080/MiniProject/forgot" method="post">
        <div class="txt_field">
          <input type="text" name="uname" required>
          <span></span>
          <label>Your Username</label>
        </div>
        <div class="txt_field">
          <input type="password" name="pwd1" required>
          <span></span>
          <label>New Password</label>
        </div>
        <div class="txt_field">
          <input type="password" name="pwd2" required>
          <span></span>
          <label>Confirm Password</label>
        </div>
        <input type="submit" value="Reset Password" id="reset">
      </form>
    </div>

    <script>
        document.getElementById("back-btn").addEventListener("click", () => {
        	location.href = "http://localhost:8080/MiniProject/loginPage.jsp";
        });
        var status = document.getElementById("status").value;
    	if(status=="failed"){
        	alert("Sorry, Wrong Username or Password")
        }
        if(status=="success"){
        	alert("Congrats, New Password is Created");
        	window.open('loginPage.jsp',"_self");
        }
        
        
    </script>

  </body>
</html>
