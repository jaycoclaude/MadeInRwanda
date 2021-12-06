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
                <h2>Sennd us Message</h2>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    
    <!-- Banner Ends Here -->


    <section class="contact-us">
      <div class="container">
        <div class="row">
        
          <div class="col-lg-12">
            <div class="down-contact">
              <div class="row">
                <div class="col-lg-8">
                  <div class="sidebar-item contact-form">
                    <div class="sidebar-heading">
                      <h2>Send us a message</h2>
                    </div>
                    <div class="content">
                      <form id="contact" action="" method="post">
                        <div class="row">
                          <div class="col-md-6 col-sm-12">
                            <fieldset>
                              <input name="name" type="text" id="name" placeholder="Your name" required="">
                            </fieldset>
                          </div>
                          <div class="col-md-6 col-sm-12">
                            <fieldset>
                              <input name="email" type="text" id="email" placeholder="Your email" required="">
                            </fieldset>
                          </div>
                          <div class="col-md-12 col-sm-12">
                            <fieldset>
                              <input name="subject" type="text" id="subject" placeholder="Subject">
                            </fieldset>
                          </div>
                          <div class="col-lg-12">
                            <fieldset>
                              <textarea name="message" rows="6" id="message" placeholder="Your Message" required=""></textarea>
                            </fieldset>
                          </div>
                          <div class="col-lg-12">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-button">Send Message</button>
                            </fieldset>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="sidebar-item contact-information">
                    <div class="sidebar-heading">
                      <h2>contact information</h2>
                    </div>
                    <div class="content">
                      <ul>
                        <li>
                          <h5>0788888888</h5>
                          <span>PHONE NUMBER</span>
                        </li>
                        <li>
                          <h5>urcshuyecampus2021@gmail.com</h5>
                          <span>EMAIL ADDRESS</span>
                        </li>
              
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
 
          
        </div>
      </div>
    </section>

    
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <ul class="social-icons">
              <li><a href="http://www.facebook.com">Facebook</a></li>
              <li><a href="http://www.twiter.com">Twitter</a></li>
              <li><a href="https://www.instagram.com/accounts/login/">Instagram</a></li>
              <li><a href="https://elearning.ur.ac.rw/">UR Elearnig</a></li>
            </ul>
          </div>
          <div class="col-lg-12">
            <div class="copyright-text">
              <p>Copyright 2021
                    
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