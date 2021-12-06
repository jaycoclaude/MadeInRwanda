

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
	        try {
	        	 String[] rows = new String[1];
				FileWriter f=new FileWriter("C:\\Users\\Students\\Desktop\\nnn.xlsx",true);
				BufferedWriter br=new BufferedWriter(f);
				PrintWriter pw=new PrintWriter(br);
//				pw.print(name);
//				pw.print(",");
//				pw.print(address);
//				pw.print(",");
//				pw.print(city);
//				pw.print(",");
//				pw.print(gender);
//				pw.print(",");
//				pw.print(email);
//				pw.print(",");
//				pw.print(password);
//				pw.print(",");
				  
			    for(int p = 1; p<rows.length; p++){
			      pw.append(rows[p]);
			    }
				
				pw.println(fname+ ","+detail+","+fcategory+","+size+","+detail+","+size);
				
				pw.flush();
				f.close();
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	       
	    }
		
	       
	
}

