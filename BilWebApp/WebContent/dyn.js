$(function() {
	    $("div.bhoechie-tab-menu>ul.list-group>a").click(function(e) {
	        e.preventDefault();
	        $(this).siblings('a.active').removeClass("active");
	        $(this).addClass("active");
	        var index = $(this).index();
	        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
	        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
	    });
	});
var OneRow ='<tr><td><input type="text" class="form-control" name="Reg_num" placeholder="Reg Nummer"></td><td><input type="text" class="form-control" name="Merke"  placeholder="Merke"></td><td><input type="text" class="form-control" name="Model" placeholder="Model"></td><td><button class="remove">-</button></td></tr>';

function AddRowBtn(){
		$('tbody').append(OneRow);
}

33


$(function() {
    $('tbody').sortable();
 
 
    $(document).on('click', '.remove', function() {
        $(this).parents('tr').remove();
       
    });
 
    $('#submit_a').click(function(){
    	
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
    	    var numCells = numRows * CellsInRow + 6;
    	  
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
    	
    	
     
      
    });
     
  //  $('#form1 #form2').submit();
});


