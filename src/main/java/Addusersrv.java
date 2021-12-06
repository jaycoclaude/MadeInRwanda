

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class fashionsrv
 */
@WebServlet("/Addusersrv")
@MultipartConfig(maxFileSize = 16177215) 
public class Addusersrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addusersrv() {
        super();
        // TODO Auto-generated constructor stub
    }
    
 	private String url="jdbc:mysql://localhost:3306/madeinrwanda";
 	 private  String user="root";
    private  String pass="";
    private String drivename="com.mysql.cj.jdbc.Driver";
   

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("uname");
		String size=request.getParameter("email");
	
		String detail=request.getParameter("pass");
		String fcategory=request.getParameter("category");
				

	  

	    
	       
	        Connection conn = null; // connection to the database
	        String message = null;  // message will be sent back to client
	         
	        try {
	            // connects to the database
	            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
	            conn = DriverManager.getConnection(url,user,pass);
	 
	            // constructs SQL statement
	            String sql = "INSERT INTO login values(?,?,?,?,?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, null);
	            statement.setString(2, fname);
	            statement.setString(3, detail);
	            statement.setString(4, fcategory);
	            statement.setString(5, size);
	            // sends the statement to the database server
	            int row = statement.executeUpdate();
	            System.out.print("well saved!");
	            if (row > 0) {
	                message = "File uploaded and saved into database";
	               
	            }
	            
	        } catch (SQLException ex) {
	            message = "ERROR: " + ex.getMessage();
	            ex.printStackTrace();
	        } finally {
	            if (conn != null) {
	                // closes the database connection
	                try {
	                    conn.close();
	                } catch (SQLException ex) {
	                    ex.printStackTrace();
	                }
	            }
	         
				
			
     
		
	}
	        getServletContext().getRequestDispatcher("/message.jsp").forward(
	                request, response);

}}
