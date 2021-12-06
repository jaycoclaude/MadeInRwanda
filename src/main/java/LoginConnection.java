import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginConnection {

    public boolean CheckCredentail(String uname,String pass) 
    
    {
    	boolean s=false;
    	
    	        try {

    	            
    	            Class.forName("com.mysql.cj.jdbc.Driver");

    	           
    	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/madeinrwanda","root","");
    	            PreparedStatement ps = con.prepareStatement("select * from login where username=? and password=?");
    	            ps.setString(1, uname);
    	            ps.setString(2, pass);
    	            ResultSet rs =ps.executeQuery();
    	            s= rs.next();

    	        }
    	        catch(Exception e) {
    	            e.printStackTrace();
    	        }
    	

    	return s;
    }
   
    
    

}
