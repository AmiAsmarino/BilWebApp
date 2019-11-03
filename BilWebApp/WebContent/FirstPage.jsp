<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Velkommen Toyota</title>
	<link rel="stylesheet" type="text/css" href="First.css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>
	$(document).ready(function() {
	    $("div.bhoechie-tab-menu>ul.list-group>a").click(function(e) {
	        e.preventDefault();
	        $(this).siblings('a.active').removeClass("active");
	        $(this).addClass("active");
	        var index = $(this).index();
	        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
	        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
	    });
	});
	</script>
</head>
<body>



<div id="fullscreen_bg" class="fullscreen_bg"/> 

<div class="container">
    <div class="row">
        <div class="col-lg-5 col-md-8 col-sm-6 col-xs-6 bhoechie-tab-container">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
              <ul class="list-group">
                <a href="#" class="list-group-item active">
                  <br/><br/><i class="glyphicon glyphicon-home"></i> Home<br/><br/>
                  </a>
                <a href="#" class="list-group-item ">
                  <br/><br/><i class="glyphicon glyphicon-tasks"></i> Registrering <br/><br/>
                </a>  
                <a href="#" class="list-group-item ">
                  <br/><br/><i class="glyphicon glyphicon-transfer"></i> Adresse<br/><br/>
                </a>
                <a href="#" class="list-group-item">
                  <br/><br/><h4 class="glyphicon glyphicon-wrench"></h4> Åpningstider<br/><br/>
                </a>
              </ul>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
                <!-- flight section -->
                <div class="bhoechie-tab-content active">
                    <center>
                      <h1 class="glyphicon glyphicon-home" style="font-size:14em;color:#00001a"></h1>
                      <h2 style="margin-top: 0;color:#00001a">Velkommen</h2>
                      <h3 style="margin-top: 0;color:#00001a">Toyota Tromsø</h3>
                      <h4 style="margin-top: 0;color:#00001a">Hjemmeside</h4>
                    </center>
                </div>
             
              
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-tasks" style="font-size:12em;color:#00001a"></h1>
                      <h2 style="margin-top: 0;color:#00001a"><a href="HomePage.jsp" class="btn btn-sm btn-primary btn-block" role="button">Ny kunde?</a></h2>
                      <h3 style="margin-top: 0;color:#00001a">Registrering ny kunde/biler</h3>
                    </center>
                </div>
    
               
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-transfer" style="font-size:12em;color:#00001a"></h1>
                      
                      <h2 style="margin-top: 0;color:#5858FA">Adresse </h4>
                      <h3 style="margin-top: 0;color:#848484">Skattørveien 44 9018 Tromsø</h3>
                    </center>
                </div>
                
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-edit" style="font-size:12em;color:#00001a"></h1>
                      <h2 style="margin-top: 0;color:#5858FA">Åpningstider</h2>
                       <h3 style="margin-top: 0;color:#848484"> Man-Tors 08.00 - 17.00</h3>
                        <h3 style="margin-top: 0;color:#848484">Fredag   08.00 - 16.00</h3>
                         <h3 style="margin-top: 0;color:#848484">Lørdag   11.00 - 14.00</h3>
				 </center>
                </div>
            </div>
        </div>
  </div>
</div>


</body>
</html>