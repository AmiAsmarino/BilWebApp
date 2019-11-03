
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
public class Connect8 {

	

	@SuppressWarnings("deprecation")
	public static void main(String[] args) throws Exception{
		getConnection();
	}
	
	public static Connection getConnection() throws Exception{
		try {
			String driver = "com.mysql.cj.jdbc.Driver";
			String url= "jdbc:mysql://localhost:3306/bildb?useTimezone=true&serverTimezone=UTC";
			String username ="root";
			String password ="Bil9018";
			Class.forName(driver);
			
			Connection conn= DriverManager.getConnection(url,username,password);
			System.out.println("Connected, yeah it works!");
			PreparedStatement pst = conn.prepareStatement("INSERT INTO `bildb`.`toyotatbl`"
					+ "(`user_id`, `etternavn`, `fornavn`, `adresse`, `postnr`, `sted`,"
					+ " `merke1`, `årsmodel1`, `regnummer1`,`merke2`, `årsmodel2`, `regnummer2`, "
					+ "`merke3`, `årsmodel3`, `regnummer3`) VALUES ('4', 'Ole ', 'Olsen', 'storgata15', '1010', 'Oslo', "
					+ "'Tesla', '2018','Zh47732', 'VW', '2011', 'SW45122', 'Fiat', '1977', 'BC18892')");
			
			System.out.println("inserting to the Database");
			int status = pst.executeUpdate();
			
			if(status != 0) {
				
				System.out.println("Add record to DB");
			}
	
			return conn;
			
		} catch(Exception e){System.out.println(e);}
		
		return null;
	}
}
	
	
	
		
		/*
		
		PreparedStatement ps = conn.prepareStatement("INSERT INTO `bildb`.`toyotatbl` 
		(`user_id`, `etternavn`, `fornavn`, `adresse`, `postnr`, `sted`, `merke1`, `årsmodel1`, `regnummer1`,
		`merke2`, `årsmodel2`, `regnummer2`, `merke3`, `årsmodel3`, `regnummer3`)
		 VALUES ('3', 'Per ', 'Harald', 'storgata44', '1029', 'Oslo', 'Mercedes', '2018',
		  'Zh47732', 'VW', '2011', 'SW45122', 'Fiat', '1977', 'BC18892'); ");
		int status = ps.executeUpdate();
		
		if(status != 0) {
			System.out.println("Database was Connected");
			System.out.println("Add record to DB");
		}

	}
	*/


