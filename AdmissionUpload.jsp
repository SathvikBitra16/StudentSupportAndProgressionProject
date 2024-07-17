<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        	*{
            	font-family: 'Poppins', sans-serif;
        	}
        	body{ 
            	overflow-x :hidden;
			}
			.name{
				
			}
		</style>
	</head>
	<body>
		<div class="name">
		  <label>Student Name : </label>
		  <input type="text"/>
		</div>
		<div class="year">
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
	    <div class="course">
	      <label>Graduation : </label>
	      <select class="course1" name="graduation">
	        
	        <option value="UG">UG</option>
	        <option value="PG">PG</option>
	      </select>
	    </div>
	    <div class="branch">
	      <label>Branch : </label>
	      <select class="branch1" name="branch">
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
	      <label>Admission Type : </label>
	      <select class="type1" name="type">
	        <option value="CAT A">Category A</option>
	        <option value="CAT B">Category B</option>
	        <option value="NRI">NRI Quota</option>
	        <option value="NCC">NCC Quota</option>
	        <option value="OTHERS">Other State</option>
	      </select>
	    </div>
	    <div class="category">
	      <label>Category : </label>
	      <select class="type1" name="category">
	        
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
	      <select class="type1" name="gender">
	        <option value="M">Male</option>
	        <option value="F">Female</option>
	      </select>
	    </div>
      <div class="entry">
        <label>Entry Type : </label>
        <select class="type1" name="entry">
  
          <option value="No">1st Year Entry</option>
          <option value="Yes">Lateral Entry</option>
        </select>
      </div>
	    <button id="btn1" class="btn btn-outline-vvit">Fetch Result</button>
    
	</body>
</html>