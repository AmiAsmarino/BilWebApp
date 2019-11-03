package com.sr.pkg;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ServletSearch
 */
@WebServlet("/ServletSearch")
public class ServletSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Statement st;
		Statement stBil;
   	 	String driver1 = "com.mysql.cj.jdbc.Driver";
   	 	String url= "jdbc:mysql://localhost:3306/toyota_db?useTimezone=true&serverTimezone=UTC";
   	 	
		String username ="root";
		String password ="Bil9018";
		
		try {
		Class.forName(driver1);
		Connection conn= DriverManager.getConnection(url,username,password);
		
		String SearchVal = request.getParameter("searchValues");
		if(SearchVal != null) {
		
			System.out.println("Search value is " + SearchVal);
			
			String query = "SELECT * FROM toyota_db.person_data where Fornavn='"+SearchVal+"' or Etternavn='"+SearchVal+"' order by Etternavn";
		    st = conn.createStatement();
		    ResultSet  rs = st.executeQuery(query);
		    ArrayList<Object> al= new ArrayList<>();
		    //ArrayList<Object> bilAr= new ArrayList<>();
		    ArrayList<Object> emp =new ArrayList<>();System.out.println("Here 1");
		    while(rs.next()){
		    	  al  = new ArrayList<>();
		    	  al.add(rs.getString(1));
		    	  al.add(rs.getString(2));
		    	  al.add(rs.getString(3));
		    	  al.add(rs.getString(4));
		    	  al.add(rs.getString(5));
		    	  al.add(rs.getString(6));
		    	  //tlfNR= al.get(2);
		    	  System.out.println("tlf num :" + al.get(2));
		    	  String Bilquery = "SELECT * FROM toyota_db.bil_data where tlf_num_id ='"+al.get(2)+"' order by tlf_num_id";
		    	  stBil = conn.createStatement();
		    	  ResultSet  rsBil = stBil.executeQuery(Bilquery);
		    	  while(rsBil.next()){
		    		  al.add(rsBil.getString(1));
		    		  al.add(rsBil.getString(2));
		    		  al.add(rsBil.getString(3));
		    	  }
		    	  emp.add(al);
		    	  }

		    	 request.setAttribute("empList",emp); 
		    	 
		    	 System.out.println("List " + emp);
		    	 
		    	 String VSearch = "/ViewSearch.jsp";
		    	  RequestDispatcher disp = getServletContext().getRequestDispatcher(VSearch);
		    	  disp.forward(request,response);
		    	  conn.close();
		}
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
