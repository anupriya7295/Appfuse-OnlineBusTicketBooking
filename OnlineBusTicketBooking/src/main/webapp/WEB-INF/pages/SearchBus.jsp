<!DOCTYPE html>
<html lang="en">

<head>

    
    <title>Search Bus</title>

    <link href="styles/bootstrap.min.css" rel="stylesheet">

        <!-- Theme CSS -->
        <link href="styles/freelancer.min.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="styles/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css"> 
     <!-- Load jQuery from Google's CDN -->
    
    
    <link rel="stylesheet" type="text/css" media="all" href="/webjars/bootstrap-datepicker/1.3.1/css/datepicker.css" />
    

</head>
<style>
   .bodyColor {
  text-align: center;
  /*background: #18BC9C;*/
  	background: url("images/back.jpg") 30% 30%;
        
  color: white;
} 
  .form-control option {
      font-size:large;
      color:black;
    }
</style>

<body id="page-top" class="bodyColor">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <div class="navbar-header page-scroll" style="margin-bottom: -33px;">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="#page-top">
                        <img style="position:fixed; left:1px;top:7px"class="img-responsive" 
                            src="images/logo_bus_stop.png" alt="" width = "85px" height = "85px">
                    </a>
                    <a class="navbar-brand" href="#page-top" style = "color:white; font-size:40px; font-family:Comic Sans MS;">
                        &nbsp;
                        BUS STOP</a>                    
                </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    <li class="page-scroll">
                      <a href="profile.html" style = "text-decoration : none; font-size:large;">${pageContext.request.remoteUser}</a>
                    </li>
                    <li class="page-scroll">
                      <a href="logout.html" style = "text-decoration : none; font-size:large;">Logout</a>
                    </li>
                    <li class="page-scroll">
                      <a href="UserHomePage.html" style = "text-decoration : none; font-size:large;">Back</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>


<div style="position:fixed; left:80px; top:200px;margin-bottom: 2cm;"  >
<h2 style="margin-bottom: 2cm;">
Online Bus Ticket Booking With Zero Booking Fee!!!!</h2>

 
<form  id="searchBus" name="searchBus" onsubmit="return formValidation()" action="Search.html" method="post">
   <table style="margin-bottom: 2cm;">
    <tr>
        <td>
        <div class="form-group">
      
            <p  >From</p>
      <select class="form-control"style="width:250Px; " name="source" id="source" >
        <option >--Select Source--</option>
        <option>Chennai</option>
        <option>Trichy</option>
        <option>Madurai</option>
        <option>Tuticorin</option>
      </select>
           </div>
         </td>
        <td style="position:absolute;right: 350px;">
            <div class="form-group">
             <p>To</p>
      <select class="form-control"style="width:250Px" name="destination"  id="destination" >
         <option >--Select Destination--</option>
        <option>Chennai</option>
        <option>Trichy</option>
        <option>Madurai</option>
        <option>Tuticorin</option>
      </select>
            </div>
        </td>
    </tr>    
    </table>
    
    <table style="margin-bottom: 2cm;">
    <tr><td>
     <p style="color : white">Pick a Date</p></td></tr>
     <tr><td>
     <input name="date" id="date"  onchange="dateofTavel()" style="left:2Px;color:black" type="date"  /></p>
     </td>
     <td style = "padding : 10px" > <button style="left:2Px;top:380px;" type="submit" class="btn btn-danger" >Search Available buses</button> </td>
     </tr></table>
     
  <script type="text/javascript" src="/webjars/bootstrap-datepicker/1.3.1/js/bootstrap-datepicker.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.date').datepicker({format: "mm/dd/yyyy", weekStart: "0"});
    });

  function formValidation() {
      var source = document.searchBus.source.value;
      var destination = document.searchBus.destination.value;
      var dateOfTravel =  document.searchBus.date.value;
      if(source == destination ){
    	  alert("Source and Destination Should not be same.Please enter correct value");
    	  return false;
      }
      else if(source == "--Select Source--"){
    	  alert("Select Source City");
    	  return false;
      }
      else if(destination == "--Select Destination--"){
    	  alert("Select Destination City");
    	  return false;
      }
      else if(dateOfTravel == ""){
		  alert("Select Travel Date");
    	  return false;
	  } 
      else {
    	  var now = new Date();
    	  var travelDate = new Date(dateOfTravel);
    	  if(travelDate < now){
    		  alert("Please Select Correct Date");
        	  return false;
    	  }
      }
      
  } 
 
  </script>
  
  </form>
  
 </div>
 

</body>
</html>