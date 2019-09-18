<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">




		<title> TryPage </title>
		<link rel="stylesheet" type="text/css" href="tryCss.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		
		 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
         		
	</head>
	<body>
		
		<h1 id="header" class="p-3 mb-2 bg-primary text-white "> Toyota Haugesund </h1>
		<p class="text-center"><i>Salhusvegen 169, 5538 Haugesund</i></p>
	




	<form name="loginForm"  class="PersonBorder" method="post" action="NewServlet">
	   
	   	<h2>Persondata</h2>
	
		  <div class="row">
		    <div class="col-md-4">
		    <label for="Etternavn">Etternavn <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Etternavn" required="true"  placeholder="Etternavn">
		    </div>
		    
		    <div class="col-md-4">
		    <label for="Fornavn">Fornavn <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Fornavn" required="true"  placeholder="Fornavn">
		    </div>
		  </div>
			
			<div class="row">
		    <div class="col-md-6">
		      <label for="Adresse">Adresse <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Adresse" required="true" placeholder="Adresse">
		    </div>
		    </div>
			
		  <div class="row">
		    <div class="col-md-3">
		    <label for="Post nr">Post nr <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Postnr" required="required" pattern="[0-9]{1,6}" placeholder="Post nr">
		    </div>
		    <div class="col-md-3">
		    <label for="Sted">Sted <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Sted" required="true" placeholder="Sted">
		    </div>
		  </div>	
		  

	
		<h2>Kjøretøydata</h2>
              <h3> Bil 1</h3>
			  <div class="row" id="dynamic_field">
			    <div class="col-md-3">
				     <input type="text" class="form-control" name="Merke1" placeholder="Merke">
			    </div>
			    
			    <div class="col-md-3">
				    <input type="text" class="form-control" name="Årsmodel1" placeholder="Årsmodel">
			    </div>
			    
			    <div class="col-md-3">
				    <input type="text" class="form-control" name="Reg_nummer1" placeholder="Reg.nummer">
			    </div>
			  </div>
			  
			  <h3> Bil 2</h3>
			  <div class="row" id="dynamic_field">
			    <div class="col-md-3">
				     <input type="text" class="form-control" name="Merke2" placeholder="Merke">
			    </div>
			    
			    <div class="col-md-3">
				    <input type="text" class="form-control" name="Årsmodel2" placeholder="Årsmodel">
			    </div>
			    
			    <div class="col-md-3">
				    <input type="text" class="form-control" name="Reg_nummer2" placeholder="Reg.nummer">
			    </div>
			  </div>
          
          	 <h3> Bil 3</h3>
			  <div class="row" id="dynamic_field">
			    <div class="col-md-3">
				     <input type="text" class="form-control" name="Merke3" placeholder="Merke">
			    </div>
			    
			    <div class="col-md-3">
				    <input type="text" class="form-control" name="Årsmodel3" placeholder="Årsmodel">
			    </div>
			    
			    <div class="col-md-3">
				    <input type="text" class="form-control" name="Reg_nummer3" placeholder="Reg.nummer">
			    </div>
			  </div>
			  </br>
	   
	    <input type="submit" value=" Submit " />
	</form>
	
		</br></br>s
		<h6>Du/dere kan finne oss her nede &#x2BAE;&#x2BAE;</h6> 	
		<!--Google map-->
			<div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 500px">
			  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8125.853140590355!2d5.2887743922523685!3d59.391982760920676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x463b9fbcf98e831b%3A0xd6a1e9d950ffe626!2sToyota%20Haugesund!5e0!3m2!1sno!2sno!4v1568505279288!5m2!1sno!2sno"
			  		 width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			</div>
			
			<!--Google Maps-->	
	

</body>
</html>

