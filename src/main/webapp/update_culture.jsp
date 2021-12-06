<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
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
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from culture where culture_id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
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
                        <a href="blankuser.jsp"><i class="fa fa-edit "></i>Add new User </a>
                    </li>

                    <li>
                        <a href="blankuser.jsp"><i class="fa fa-table "></i>View Users  <span class="badge"></span></a>
                    </li>
             
                    
                    <li>
                        <a href="ui.html"><i class="fa fa-table "></i>View Cultures  <span class="badge"></span></a>
                    </li>
                  <li>
                        <a href="ui.html"><i class="fa fa-table "></i>View Electronics  <span class="badge"></span></a>
                    </li>
 						<li>
                        <a href="ui.html"><i class="fa fa-table "></i>View Fashion  <span class="badge"></span></a>
                    </li>

               

                  
                    
                </ul>
                            </div>

        </nav>
                <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h5 class="over-title margin-bottom-15">Update <span class="text-bold">Users</span></h5>
<form action="culup.jsp" method="post">
  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Culture_id</label>
    <input type="text" class="form-control" id="email" placeholder="Enter Username" name="id" value="<%=resultSet.getString("culture_id") %>" readonly="readonly">
  </div>
  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Culture_name:</label>
    <input type="text" class="form-control" id="email" placeholder="Enter Username" name="cname" value="<%=resultSet.getString("culture_name") %>">
  </div>
  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Date:</label>
    <input type="date" class="form-control" id="email" placeholder="Enter email" name="date" value="<%=resultSet.getString("date1") %>">
  </div>
  <div class="mb-3">
    <label for="pwd" class="form-label">details:</label>
    <input type="Text" class="form-control" id="pwd" placeholder="Enter password" name="details" value="<%=resultSet.getString("Details") %>">
  </div>
  <div class="mb-3">
    <label for="pwd" class="form-label">Category:</label>
    <Select class="form-control" id="pwd" placeholder="Enter password" name="category">
    <option><%=resultSet.getString("category") %></option>
       <option>imigongo</option>
    <option>inkanda</option>
    <option>paintings</option>
    </Select>
  </div>
  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
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
        
<%-- <h1>Update data from database in jsp</h1>
<form method="post" action="upprocess.jsp">

<input type="text" name="id" value="<%=resultSet.getString("user_id") %>">
<br>
Username:<br>
<input type="text" name="uname" value="<%=resultSet.getString("username") %>">
<br>
Last name:<br>
<input type="text" name="pass" value="<%=resultSet.getString("password") %>">
<br>
City name:<br>
<select name="category" >
<option>country</option>
</select>
<br>
email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br><br>
<input type="submit" value="submit">
</form> --%>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>