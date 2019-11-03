<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head >
		<meta charset="ISO-8859-1">
		<title> Toyota Tr. </title>
		<link rel="stylesheet" type="text/css" href="mainCSS.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
         
         		
	</head>
	<body>
		
		<h1 id="header" class="p-3 mb-2 bg-primary text-white "> Toyota Harila Tromsø </h1>
		<p class="text-center"><i>Skattørvegen 44, 9018 Tromsø</i></p>
	<div class="wrapper">
		<a href="FirstPage.jsp" role="button" class="btn btn-info">Bak til hjemmeside</a>
	</div>
	<!-- Search form -->
	<form method="post" action="ServletSearch">
		<div class="col-md-4">
		<div class="active-cyan-3 active-cyan-4 mb-4">
			<input class="form-control" name="searchValues" type="text" placeholder="Søk" aria-label="Search">
			 <button id="search">Søk</button>
		</div>
		</div>
		
	</form>
	
	
	   <div  class="PersonBorder" >
	    
	   	<h2>Persondata</h2>
	
		  <div class="row">
		    <div class="col-md-4">
		    <label for="Etternavn">Etternavn <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Etternavn" required placeholder="Etternavn">
		    </div>
		     
		    <div class="col-md-4">
		    <label for="Fornavn">Fornavn <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Fornavn" required  placeholder="Fornavn">
		    </div>
		  </div>
	
			<div class="row">
		    <div class="col-md-3">
		    <label for="tlf nr">Tlf nr <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Tlf_nr" required="required" pattern="[0-9]{1,12}" placeholder="tlf nr">
		    </div>
		    
		    <div class="col-md-6">
		      <label for="Adresse">Adresse <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Adresse" required  placeholder="Adresse">
		    </div>
		    </div>
		   	
		  <div class="row">
		    <div class="col-md-3">
		    <label for="Post nr">Post nr <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Postnr" required="required" pattern="[0-9]{1,8}" placeholder="Post nr">
		    </div>
		    
		    <div class="col-md-3">
		    <label for="Sted">Sted <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Sted" required placeholder="Sted">
		    </div>
		  </div>
		
		
		
		<h2>Bildata</h2>
	  		 <table id="myTable">
	        <tbody>
	            <tr>
	            <div class="row">
	            	<div class="col-md-3">
					      <td><input type="text" class="form-control" name="Reg_num" required="true"  placeholder="Reg Nummer"></td>
					 </div>
					 
					 <div class="col-md-3">
					      <td><input type="text" class="form-control" name="Merke" required="true"  placeholder="Merke"></td>
					 </div>
					  
					  
					  <div class="col-md-3">
					      <td><input type="text" class="form-control" name="Model" required="true"  placeholder="Model"></td>
					    </div>
					  
	            		<td><button class="remove">-</button></td>
	             </div>
	            	
	            	
	            	
		            
	            </tr>
	            
	        </tbody>
	    </table>
	    
	   
	    	<button id="addRow" ONCLICK="AddRowBtn()"> Add BIL</button>
	    	
	  
	    <form name="loginForm"  method="post" action="mainServlet" >
		    <input type="hidden" name="myField" id="myField" value="" />
		    <input type="hidden" name="numCells" id="numCells" value="" />
		    <button  id="submit_a">Submit</button>
	      </form>
	    
		 </div>
	
	
	   
	  
		<h6>Du/dere kan finne oss her nede &#x2BAE;&#x2BAE;</h6> 	
		<!--Google map-->
			<div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 500px">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1384.4589900469084!2d19.01154361649298!
			3d69.69619088639554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x45c4c381289e0155%3A0x31380e58077dda24!
			2sHarila%20AS%20avd%20Troms%C3%B8%20(Toyota%20-%20Lexus)!5e0!3m2!1sen!2sno!4v1571578682439!5m2!1sen!2sno"
			 width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			  
			</div>
			
			<!--Google Maps-->	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>	
<script src="dyn.js"></script>
</body>

</html>

