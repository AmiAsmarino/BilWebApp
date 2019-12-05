<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<title>Time Bestilling</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="Bestille.css">
		<link rel="stylesheet" type="text/css" href="mainCSS.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    
      <!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css"> -->
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.43/css/bootstrap-datetimepicker.min.css"> 
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.43/css/bootstrap-datetimepicker-standalone.css"> 
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.43/js/bootstrap-datetimepicker.min.js"></script>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/locale/da.js"></script>
    
</head>
<body>
		<h1 id="header" class="p-3 mb-2 bg-primary text-white "> Toyota Harila Tromsø </h1>
		<p class="text-center"><i>Skattørvegen 44, 9018 Tromsø</i></p>
		<div class="wrapper">
			<a href="HjemmeSide.jsp" role="button" class="btn btn-info">Bak til hjemmeside</a>
		</div>
		
		
		<div id="content">
  			<div id="left">
		
			<form>
			  <div id="navn" class="row">
				  <div class="form-group col-md-6">
				    <label for="inputAddress2">Navn</label>
				    <input type="text" class="form-control" id="inputnavn" placeholder="navn">
				  </div>
			  </div>
			  
			  <div id="epost" class="row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">E-post</label>
				      <input type="email" class="form-control" id="inputEpost" placeholder="E-post">
				    </div>
			    </div>
			   
			    <div id="tlf" class="row">
				    <div class="form-group col-md-6" >
				      <label for="inputPassword4">Telefon nr</label>
				      <input type="text" class="form-control" id="inputTlf" placeholder="Telefon nr">
				   	</div> 
			   </div>
			  
			  <div id="reg_nr" class="row">
			  	<div class="form-group col-md-6">
				    <label for="inputAddress">Registrer nr</label>
				    <input type="text" class="form-control" id="inputReg" placeholder="Registrer nr">
				  </div>
			  </div>
			
			  <div id="cal" class="row">
	            <div class='col-sm-6'>
	                <div class="form-group">
	                	<label for="inputAddress">Dato og tid</label>
	                    <div class='input-group date' id='datetimepicker1'>
	                    	<input type='text' class="form-control" />
	                        <span class="input-group-addon">
	                        <span class="glyphicon glyphicon-calendar"></span>
	                        </span>
	                    </div>
	                </div>     
	          	</div>
	          </div>   
				
			  <div id="selectOne" class="row">
				  <div class='col-sm-6'>
				    <label for="SelectOne">Hva du vil bestille?</label>
					    <select class="form-control" id="SelectOne">
					      <option>Service</option>
					      <option>EU-kontroll</option>
					      <option>Hjulskift</option>
					      <option>Annet</option>
					    </select>
					 </div>
				 </div>
			  
			  <div id="Bestille" class="row">
				  <button  type="submit" class="btn btn-primary">Bestill Ny Time</button>
			  </div>
			</form>
		</div>	
		
		<div id="map">	
	 <div id="right">	
		
		<h4>Du/dere kan finne oss her nede &#x2BAE;&#x2BAE;</h4> 	
		<!--Google map-->
			<div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 300px">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1384.4589900469084!2d19.01154361649298!
			3d69.69619088639554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x45c4c381289e0155%3A0x31380e58077dda24!
			2sHarila%20AS%20avd%20Troms%C3%B8%20(Toyota%20-%20Lexus)!5e0!3m2!1sen!2sno!4v1571578682439!5m2!1sen!2sno"
			 width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			 
			 </div>
			</div>
		</div>
			<!--Google Maps-->	
	</div>	
	 <script type="text/javascript" src="Bestill.js">   </script>
</body>
</html>