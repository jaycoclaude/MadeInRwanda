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
</head>
<body>
<div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
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
    <hr style="position:absolute; width:100%;height:100px; border:2px solid black;top:-2%;">
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
                    <h2>Add A new Electronics</h2>
                    <form action="electronicssrv" class="was-validated" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="uname">Name:</label>
    <input type="text" class="form-control" id="uname" placeholder="Enter electronic name..." name="ename" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="pwd">Manufacture date:</label>
    <input type="date" class="form-control" id="pwd" placeholder="Enter the size ..." name="edate" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
    <div class="form-group">
    <label for="uname">Category:</label>
    <select class="form-control" id="uname" name="category" required>
    <option>Category</option>
    <option>Phones</option>
    <option>laptops</option>
    <option> electronicFurnitures</option>
    </select>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
   <div class="form-group">
    <label for="pwd">Image:</label>
    <input type="file" class="form-control" id="pwd" placeholder="browse image" name="file" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>

   <div class="form-group">
    <label for="pwd">more Details:</label>
    <TextArea class="form-control" id="pwd" placeholder="more info..." name="details" required></TextArea>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
                    </div>
                  </div>
                </div>
                </div>
                </div>
                </div>
                </div>
                </div>
                </section>
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
</body>
</html>