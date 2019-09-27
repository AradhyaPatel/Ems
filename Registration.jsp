<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <title>Employee Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<style>
  h1
  {
    font-family:"algerian"
  }
  p
  {
    font-family:"times new roman"
  }
  label 
  {
    align="left"
  }
  
</style>
<body>

 <div  class=" jumbotron text-center">
  <h1>Registration Form</h1>
  <p>WELCOME TO EMPLOYMEE MANAGEMENT SYSTEM</p> 
 
    <div class="container">
   <div class="row">
   <form action="servlet1" method="get">
    <div class="col-sm-6">
      <lable for ="Name" ><p class="text-left"> First Name: </p></label>
      <input type="First" class="form-control" id="First"placeholder=" First Name" name="FirstName">
    </div>
    <div class="col-sm-6">
      <lable for ="Name"><p class="text-left">Last Name:</p></label>
       <input type="Last" class="form-control" id="Last"placeholder=" Last Name" name="LastName">
    </div>   
    <div class="col-sm-6">
      <lable for ="Date Of Birth" ><p class="text-left"> Date Of Birth: </p></label>
      <input type="DOB" class="form-control" id="Dob"placeholder=" dd/mm/yyyy" name="dob">
    </div>
    <div class="col-sm-6">  
      <lable for ="Name"><p class="text-left">Gender:</p></label>
      <select class ="form-control" id="gender" placeholder="Gender" name="Gender">
        <option>Male</option>
        <option>Female</option>
        <option>other</option>
      </select>
    </div>
    <div class="col-sm-6">
      <lable for ="Contact Number" ><p class="text-left"> Contact Number: </p></label>
      <input type="Con" class="form-control" id="Dob"placeholder=" Contact Number" name="ContactNumber">
    </div>
    <div class="col-sm-6">  
      <lable for ="Name"><p class="text-left">Department:</p></label>
      <select class ="form-control" id="gender" placeholder="Department" name="Department">
        <option>Account Department</option>
        <option>Electricity Department</option>
        <option>Computer Department</option>
        <option>Security Department</option>
      </select>
    </div>
    <div class="col-sm-12">
      <lable for ="email"><p class="text-left">Email:</p></label>
      <input type="email" class="form-control" id="email"placeholder="Enter email" name="Email">
    </div>
	  <div class="col-sm-12">
      <lable for ="pwd"><p class="text-left">Password:</p></label>
      <input type="password" class="form-control" id="myInput" placeholder="Enter Password" name="Password" onkeyup='check();' >
	   <lable for ="pwd"><p class="text-left"> Confirm Password:</p></label>
      <input type="password" class="form-control" id="confirm_password" placeholder="Confirm Password" onkeyup='check();'>
	  <span id='message'></span><br>
	  <input type="checkbox" class="text-left" onclick="myFunction()">Show Password
	  <br>
	  <br>
	  <button type="submit" class="btn btn-success btn-lg" data-toggle="#" data-target="#">Submit</button>
</div>

</form>
   

	   
    </div>
   </div>
   
  </div>
 </div>
<script>
function myFunction(){
var x=document.getElementById("myInput");
if(x.type==="password"){
x.type="text";
}
else{
x.type="password";
}}</script> 
<script>
var check = function() {
  if (document.getElementById('myInput').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
  }
}</script>
</body>

