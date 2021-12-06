<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">
 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/fontawesome.css">
 <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
 <link rel="stylesheet" href="assets/css/owl.css">
<title>Insert title here</title>
</head>
<body>
<header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.jsp"><h2>Our Rwanda, Our Culture<em>.</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">About Us</a>
              </li>
              <li class="nav-item">
                <div class="dropdown">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background-color:white; color:black;">
   <b> Categories</b>
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Fashion</a>
    <a class="dropdown-item" href="#">Culture</a>
    <a class="dropdown-item" href="#">Electronics</a>
  </div>
</div>
              </li>
             <!--  <li class="nav-item">
                <a class="nav-link" href="post-details.html">Post Details</a>
              </li> -->
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    
    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="heading-page header-text">
      <section class="page-heading">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="text-content">
                <h4>Made In Rwanda</h4>
                <h2>more about us!</h2>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    
    <!-- Banner Ends Here -->


    <section class="about-us">
      <div class="container">
      	
        <div class="row">
          <div class="col-lg-12">
            <img src="assets/images/kk.jpg" alt="">
            <p>The Made in Rwanda product is a product that fulfills the criteria below for acquiring the Made in Rwanda logo.

Made in Rwanda logo is issued to the product produced or manufactured by a company fulfilling the following criteria:
The manufacturing company shall be registered and authorized to manufacture the product for which they apply the Made in Rwanda Logo.
The product name and brand names for the product applying to bear the MIR logo shall be registered as the company’s intellectual property
The product shall be in compliance with the provisions of the Rules of Origin as applied in Rwanda.
The product shall have a valid Certification (Standardization Mark, S-Mark), where applicable, to attest its quality and safety. In situations where S-Mark is not applicable, the product shall meet applicable Standards or statutory and regulatory requirement.
</p>

          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            <ul class="social-icons">
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-behance"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
        
        
      </div>
    </section>

    
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <ul class="social-icons">
              <li><a href="#">Facebook</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Behance</a></li>
              <li><a href="#">Linkedin</a></li>
              <li><a href="#">Dribbble</a></li>
            </ul>
          </div>
          <div class="col-lg-12">
            <div class="copyright-text">
              <p>Copyright 2020 Stand Blog Co.
                    
                   | Designed by :Nshimiyimana jean Claude,Mbonimpa Egide,Furaha Butoya Derick
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/accordions.js"></script>

    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>
    
</body>
</html>