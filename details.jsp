<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags must come first in the head; any other head content must come after these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<style>


#nav{
   background: url(http://4.bp.blogspot.com/-dVtgikk-kOY/UprtswP0yGI/AAAAAAAADag/Og0DtZ8t_oQ/s1600/header+base.png) no-repeat scroll top center; background-color: none;
   width:100%;
   height:70px; 
   box-shadow: 0px 1px 10px #5E5E5E;
   position:fixed;
   top:10px;
   left:0px;
   right:0px;
 }
 .nav-inner{ 
      width:1373px; 
      margin:auto;
 }
 .title{
     display:none;
     color:#EDEDED;
     font-family:verdana;
     font-size:25px;
     width:350px;
     margin-top:6px;
     margin-left:150px;
     font-weight:bold;
     float:left;
  }
  #navigation{
    list-style-type:none;
    padding:0px; 
    float:left;
    width:auto; 
    margin:0px auto 0px;
 }

 li { 
   display:block;
   float:left;
   padding:15px;
}
#nav a{
   font-size: 1.6em;
   text-transform: uppercase;
   text-shadow: 0 0 0.3em #464646;
   font-weight: bold;
   font-family:century gothic;
   text-decoration:none;
   color:#262626;
   opacity:0.26;
 } 
#nav a:hover {
  opacity:0.36;
 }

.span-logo {
   margin-top:-100px;
   display: inline-block;
   vertical-align: top;
   height: 105px;
   width: 152px;
   margin-top:0px;

}
div.main_logo{ 
    padding:0px; 
    float:left
}
#nav div a.logo_li{ 
  opacity:1
}
.span-logo img{ 
   width:100%; 
   height:auto; 
}
.clear{ 
  width:0px; 
  height:0px; 
  content:''; 
  display:table; 
  clear:both; 
  float:none;
}
.container-fluid
{
	margin: 200px;
}
body
{
	font-weight: bold;
	font-family:century gothic;
	
	color:#262626;
	
	
	
}

.a .btn {
  position: absolute;
  top: 75%;
  left: 30%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: transparent;
  color: white;
  font-size: 16px;
  padding: 12px 12px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.a .btn:hover {
  background-color: transparent;
}

.b .btn {
  position: absolute;
  top: 75%;
  left: 30%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: transparent;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.b .btn:hover {
  background-color: transparent;
}

.c .btn {
  position: absolute;
  top: 72%;
  left: 30%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: transparent;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.c .btn:hover {
  background-color: transparent;
}

</style>

<body>

 <div id='nav'>
   <div class="nav-inner">
    <p class='title'><a href='#'>Space Heroes Fansite</a></p>

   <div class=" main_logo">
     <a href='#' class="logo_li">
       <span class='span-logo'>
          <img src='radha.png'/>
       </span>
     </a>
   </div>

   <ul id='navigation'>
     <li><a href='#'>EMPLOYEE MANAGEMENT SYSTEM</br><small>MY PROFILE</small></a></li>
     <li class="clear"> </li>
  </ul>
  <div class="clear"></div>
  </div>
</div>


<div class = "container-fluid" >
<div class = "row">
<div form action="">
	<div class = "a">
	<div class="col-md-4">
	<input type="image" src="att.jpg" class="img-square" width="200" height="200">
	<button class="btn"><b>ATTENDACE</b></button>
	</div>

	<div class = "b">
	<div class="col-md-4">
	<input type="image" src="sal.jpg" class="img-square" width="200" height="200">
	<button class="btn"><b>SALARY</b></button>
	</div>
	<div class = "c">
	<div class="col-md-4">
	<input type="image"src="inbox.jpg" class="img-square" width="200" height="200">
	<button class="btn"><b>LEAVE</b><small></br><b>APPLICATION</b></small></button>
	</div>
	
		
		
</div>




</head>
  
  
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
  </body>
</html>

