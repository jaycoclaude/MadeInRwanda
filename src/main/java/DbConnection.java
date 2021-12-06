import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbConnection {

	private String dbUrl = "jdbc:mysql://localhost:3306/madeinrwanda";
	private String dbUser ="root";
	private String dbPass = "";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
public Connection getConnection()
{
	Connection con = null;
	try {
		con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
	
}
public String insert(Culture1 culture) {
	loadDriver(dbDriver);
	Connection con = getConnection();
	String query = "INSERT INTO culture VALUES(?,?,?,?,?,?)";
	String message ="Records Register Successfuly";
	PreparedStatement ps;
	try {
		ps=con.prepareStatement(query);
		  ps.setString(1, null);
		  ps.setString(2, culture.getFname());
		  ps.setString(3, culture.getDate1());
		  ps.setString(4, culture.getFcategory());
		  ps.setString(5, "jayco");
		  ps.setString(6, culture.getDetail());
		  ps.executeUpdate();
	} catch (SQLException e) {
		message = "Record not registerd";
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return message;
}
}
