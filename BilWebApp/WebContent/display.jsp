<html> 
  <head> 
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
   <title>Display</title> 
   <link rel="stylesheet" type="text/css" href="mainCSS.css">
   
   	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  </head> 
  <body> 


<a href="HjemmeSide.jsp" role="button" align-items: center  class="btn btn-success"> Hjemmeside</a>
<a href="Register.jsp" role="button" align-items: center class="btn btn-success"> Registrer Ny Kunde</a>

<div class="container">
    <div class="row">
        <div class="col-md-12 col-md-6 col-md-12">
            <div class="well well-sm">
                <div class="row">
                

		
                   
                    <div class="col-sm-6 col-md-8">
                        <h4> <i class="glyphicon glyphicon-user"></i>
                         Takk <font color="blue">${fornavn} ${Etternavn}!!</font>  </h4>
                        
                        <p>
                        	<i class="glyphicon glyphicon-map-marker"> Adresse : ${Adresse} </i><br />
                        	<i class="glyphicon glyphicon-ok"> Registrert Bil:  ${numBil}</i>
                            
                            <br />
                           
                        <!-- Split button -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">
                                Takk for registrering!</button>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>