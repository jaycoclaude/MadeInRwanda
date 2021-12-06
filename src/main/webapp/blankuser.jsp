<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- BOOTSTRAP STYLES-->
    <link href="assets2/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets2/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets2/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
   
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/images/logo.jfif" style="position:absolute;width:8%;height:110%;top:0%;left:0%;"/>
                        <a href="admin.jsp" style="color:#fff; font-size:205%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADMIN PANEL</a> 
                    </a>
                </div>
              
                 <span class="logout-spn" >
                <form action="Logout" method="post">
<button type="submit" class="btn btn-dark">Logout</button>
</form> 

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
 <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="index.jsp" ><i class="fa fa-desktop "></i>Homepage <span class="badge"></span></a>
                    </li>
                          <li>
                        <a href="adduser.jsp"><i class="fa fa-edit "></i>Add new User </a>
                    </li>

                    <li>
                        <a href="blankuser.jsp"><i class="fa fa-table "></i>View Users  <span class="badge"></span></a>
                    </li>
             
                    
                    <li>
                        <a href="viewcultureblank.jsp"><i class="fa fa-table "></i>View Cultures  <span class="badge"></span></a>
                    </li>
                  <li>
                        <a href="viewelectronicsblank.jsp"><i class="fa fa-table "></i>View Electronics  <span class="badge"></span></a>
                    </li>
 						<li>
                        <a href="viewfashionblank.jsp"><i class="fa fa-table "></i>View Fashion  <span class="badge"></span></a>
                    </li>

               

                  
                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h5 class="over-title margin-bottom-15">View/<span class="text-bold">Users</span></h5>
<%
String id = request.getParameter("user_id");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "madeinrwanda";
String userid = "root";
String password = "";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
PreparedStatement psmnt = null;
ResultSet resultSet = null;
%>
<table class="table table-hover" id="sample-table-1">
<thead>
<tr>

<th>ID</th>
<th>Username</th>
<th>Email </th>
<th>Action</th>

</tr>
</thead>
<%
try{
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql ="select user_id,username,email from login";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
 %>
<tbody>
<tr>
<td><%=resultSet.getString("user_id") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("email") %></td>
<td><a href="update_user.jsp?id=<%=resultSet.getString("user_id")%>">update</a>|<a href="delete_user.jsp?id=<%=resultSet.getString("user_id")%>">Delete</a></td>
    
</tr>
</tbody>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>



</table>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                    &copy;  2014 yourdomain.com | Design by: <a href="http://binarytheme.com" style="color:#fff;"  target="_blank">www.binarytheme.com</a>
                </div>
        </div>
        </div>
          
<script src="assets2/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets2/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets2/js/custom.js"></script>
</body>
</html>