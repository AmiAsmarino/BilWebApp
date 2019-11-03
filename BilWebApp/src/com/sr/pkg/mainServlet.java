package com.sr.pkg;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mainServlet
 */
@WebServlet("/mainServlet")
public class mainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
   	 	String driver = "com.mysql.cj.jdbc.Driver";
   	 	String url= "jdbc:mysql://localhost:3306/toyota_db?useTimezone=true&serverTimezone=UTC";
   	 	
		String username ="root";
		String password ="Bil9018";
		
		try {
		Class.forName(driver);
		Connection conn= DriverManager.getConnection(url,username,password);
		
		
		String ValuesDyn = request.getParameter("myField");
		String numCellsStr = request.getParameter("numCells");
		System.out.println("Values :" + ValuesDyn);
		
		String[] AllValues = ValuesDyn.split("\\|", -1);
		String tlfValue = AllValues[2];
	    int Tlfnr = Integer.parseInt(tlfValue.trim());
	    int numCells = Integer.parseInt(numCellsStr);
		 
	    String DataRec  = "INSERT INTO `toyota_db`.`person_data` ( `etternavn`, `fornavn`, `tlf_num`,`adresse`, `postnr`, `sted`) VALUES ('"+AllValues[0]+"' ,'"+AllValues[1]+"','"+AllValues[2]+"','"+AllValues[3]+"','"+AllValues[4]+"','"+AllValues[5]+"')";

	   
		PreparedStatement pst = conn.prepareStatement(DataRec);
	
		int status = pst.executeUpdate();
		System.out.println("inserting Person data to the DB");
		
		if(status != 0) {
			
			System.out.println("Add Person record to DB");
		}
		
		String Reg_num_data = "", Merke_data = "",Model_data ="";
		
		for(int i= 6; i< numCells; i++) {
			
			if(i % 3 == 0) {
				Reg_num_data = AllValues[i];}
			else if (i % 3 == 1) {
				Merke_data = AllValues[i];}
			else {
				Model_data = AllValues[i];
				
				String BilRec  = "INSERT INTO `toyota_db`.`bil_data` (`regnummer`, `merke`, `model`, `tlf_num_id`) VALUES ('"+Reg_num_data+"', '"+Merke_data+"', '"+Model_data+"', '"+Tlfnr+"')";
				PreparedStatement psBil = conn.prepareStatement(BilRec);

				int stat = psBil.executeUpdate();
				System.out.println("inserting Bil data to the DB");
				
				if(stat != 0) {
					System.out.println("Add Bil record to DB");
				}
			}
		}
		
		  String NewDisplay = "/display.jsp";
    	  RequestDispatcher disp = getServletContext().getRequestDispatcher(NewDisplay);
    	  request.setAttribute("Etternavn", AllValues[0]); 
  		  request.setAttribute("fornavn", AllValues[1]);
  		  request.setAttribute("Adresse", AllValues[3]);
  		  int numBil = (numCells - 6)/3;
  		  request.setAttribute("numBil",numBil );
    	  disp.forward(request,response);
    	  conn.close();
	
		
		}catch(Exception e){System.out.println(e);}
	}
 		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
