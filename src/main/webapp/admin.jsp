     <%
response.setHeader("cache-control", "no-cache, no-store, must-revalidate ");
if(session.getAttribute("username")==null)
{
response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<button type="submit" class="btn btn-dark" style="color:black;">Logout</button>
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
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome  Dear ${username },
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                            <div class="row text-center pad-top">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="culture.jsp" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Add Culture</h4>
                      </a>
                      </div>
                     
                     
                  </div> 
                 
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="electronics.jsp" >
 <i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>Add Electronics</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="adduser.jsp" >
 <i class="fa fa-users fa-5x"></i>
                      <h4>Add User</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="fashion.jsp" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Add Fashion </h4>
                      </a>
                      </div>
                     
                     
                  </div>
               
                 <!-- /. ROW  --> 
                
                 
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
            <div class="row">
                <div class="col-lg-12" >
                    &copy;  2021 madeinrwanda.rw | Design by: <a href="https://www.google.com/search?q=jayco&sxsrf=AOaemvK1TKP6qBhrXuaO3oN2GVKrmcBEkw:1638527454595&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiQv4q3tsf0AhUR8LsIHUmUCVcQ_AUoAXoECAEQAw&biw=1517&bih=694&dpr=0.9#imgrc=AgAEXILXKAStjM" style="color:#fff;" target="_blank">Group13@ur</a>
                </div>
            </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets2/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets2/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets2/js/custom.js"></script>
    
</body>
</html>