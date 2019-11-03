<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Sample</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <style>
        .container {
            width: 500px;
            margin: 100px auto;
        }
        input {
            width: 150px;
            font-size: 18px;
            margin: 10px;
            padding: 10px;
        }
        .remove {
            width: 30px;
            height: 30px;
            font-size: 20px;
            background-color: tomato;
            color: white;
            border: none;
            border-radius: 15px;
        }
        #addRow, #getValues {
            width: 130px;
            height: 40px;
            font-size: 16px;
            background-color: lightseagreen;
            color: white;
            border: none;
            margin: 20px;
        }
        button:hover {
            cursor: pointer;
        }
        tr:hover {
            cursor: move;
        }
    </style>
</head>
<body>

	 <div class="row">
		    <div class="col-md-4">
		    <label for="Etternavn">Etternavn <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Etternavn" required="True"  placeholder="Etternavn">
		    </div>
		     
		    <div class="col-md-4">
		    <label for="Fornavn">Fornavn <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Fornavn" required="true"  placeholder="Fornavn">
		    </div>
		  </div>
	
			<div class="row">
		    <div class="col-md-3">
		    <label for="tlf nr">Tlf nr <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Tlf_nr" required="required" placeholder="tlf nr">
		    </div>
		    
		    <div class="col-md-6">
		      <label for="Adresse">Adresse <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Adresse" required="true" placeholder="Adresse">
		    </div>
		    </div>
		   	
		  <div class="row">
		    <div class="col-md-3">
		    <label for="Post nr">Post nr <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Postnr" required="required" pattern="[0-9]{1,8}" placeholder="Post nr">
		    </div>
		    
		    <div class="col-md-3">
		    <label for="Sted">Sted <span class="required">*</span></label>
		      <input type="text" class="form-control" name="Sted" required="true" placeholder="Sted">
		    </div>
		  </div>
		


	<div class="container">
	    <table id="myTable">
	        <tbody>
	            <tr>
	                <td><input type="text" name="name"></td>
	                <td><input type="text" name="email"></td>
	                <td><input type="text" name="age"></td>
		                <td><button class="remove">-</button></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="name"></td>
	                <td><input type="text" name="email"></td>
	                <td><input type="text" name="age"></td>
	                <td><button class="remove">-</button></td>
	            </tr>
	        </tbody>
	    </table>
	    <button id="addRow" ONCLICK="AddRowBtn()">+ Add</button>
	    <button id="getValues"ONCLICK="newValue()">Get Values</button>
	     <p id="demo"></p>
	    </div>
	   <form method="post" action="DynamicServ"> 
	    <input type="hidden" name="myField" id="myField" value="" />
	     <input type="hidden" name="numCells" id="numCells" value="" />
	    <button id="submit">Submit</button>
	  
	
		</form>	 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
var html = '<tr><td><input type="text" name="name"><td><input type="text" name="email"></td><td><input type="text" name="age"></td></td><td><button class="remove">-</button></td></tr>';
function AddRowBtn()
{
	$('tbody').append(html);
}

function newValue()
{
	   var row = "";
	
	row += document.getElementsByName("Etternavn")[0].value;
	 row += " | ";
	 row += document.getElementsByName("Fornavn")[0].value;
	 row += " | ";
	 row += document.getElementsByName("Tlf_nr")[0].value;
	 row += " | ";
	 row += document.getElementsByName("Adresse")[0].value;
	 row += " | ";
	 row += document.getElementsByName("Postnr")[0].value;
	 row += " | ";
	 row += document.getElementsByName("Sted")[0].value;
	 row += " | ";
	var numRows = document.getElementById("myTable").rows.length;
    // number of cells in a row
    var CellsInRow = document.getElementById("myTable").rows[0].cells.length - 1;
    var numCells = numRows * CellsInRow;
  
   // var table = document.getElementById('myTable');
   
    
    
    var table = document.getElementById("myTable");
    
    for (var i = 0 ; i < table.rows.length ; i++) {

     

        for (var j = 0; j < table.rows[i].cells.length -1; j++) {

            row += table.rows[i].cells[j].children[0].value;
            row += " | ";
        }

        
    }
    document.getElementById('myField').value = row;
    document.getElementById('numCells').value = numCells;
    document.getElementById("demo").innerHTML = " Values " + row +"  and " + numCells +" cells";
}

$(function() {
    $('tbody').sortable();
 
    
 
    $(document).on('click', '.remove', function() {
        $(this).parents('tr').remove();
       
    });
 
  
     
   
});
</script>
</body>
</html>