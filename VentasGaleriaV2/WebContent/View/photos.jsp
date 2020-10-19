<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <head>
    <title>Shutter &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="../Resources/fonts/icomoon/style.css">

    <link rel="stylesheet" href="../Resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../Resources/css/magnific-popup.css">
    <link rel="stylesheet" href="../Resources/css/jquery-ui.css">
    <link rel="stylesheet" href="../Resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../Resources/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="../Resources/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="../Resources/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="../Resources/css/aos.css">
    <link rel="stylesheet" href="../Resources/css/fancybox.min.css">

    <link rel="stylesheet" href="../Resources/css/style.css">
    
  </head>
  <body>
      <div id="app">

  <div class="site-wrap">

  <div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close mt-3">
        <span class="icon-close2 js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>

  <header class="header-bar d-flex d-lg-block align-items-center" data-aos="fade-left">
    <div class="site-logo">
      <a href="index.html">Shutter</a>
    </div>
    
    <div class="d-inline-block d-xl-none ml-md-0 ml-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

    <div class="main-menu">
      <ul class="js-clone-nav">
        <li><a href="index.jsp">Home</a></li>
        <li class="active"><a href="photos.html">Photos</a></li>
        <li><a href="bio.jsp">Bio</a></li>
        <li><a href="blog.jsp">Blog</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>
      <ul class="social js-clone-nav">
        <li><a href="#"><span class="icon-facebook"></span></a></li>
        <li><a href="#"><span class="icon-twitter"></span></a></li>
        <li><a href="#"><span class="icon-instagram"></span></a></li>
      </ul>
    </div>
  </header> 
  <main class="main-content">
    <div class="container-fluid photos">
      <div class="row align-items-stretch">
    
        <div class="col-6 col-md-6 col-lg-4" data-aos="fade-up"  v-for="Element in Elements" data-aos-delay="100" >
          <a :href="'single_Q.jsp?id='+Element.codigo" class="d-block photo-item">
            <img :src="ImgFull+Element.urlFull" alt="{{Element.fecha}}" class="img-fluid">
            <div class="photo-text-more">
              <div class="photo-text-more">
              <h3 class="heading">{{Element.Titulo}}</h3>
              <span class="meta">{{Element.descripcion}}</span>
            </div>
            </div>
          </a>
        </div>   
      </div>

      <div class="row justify-content-center">
        <div class="col-md-12 text-center py-5">
          <p>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      </p>
        </div>
      </div>
    </div>
  </main>

</div> <!-- .site-wrap -->
</div>

  <script src="../Resources/js/vue.js"></script>
  <script src="../Resources/js/axios.min.js"></script>
  <script src="../Resources/js/Demo.js"></script>
  <script src="../Resources/js/jquery-3.3.1.min.js"></script>
  <script src="../Resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../Resources/js/jquery-ui.js"></script>
  <script src="../Resources/js/popper.min.js"></script>
  <script src="../Resources/js/bootstrap.min.js"></script>
  <script src="../Resources/js/owl.carousel.min.js"></script>
  <script src="../Resources/js/jquery.stellar.min.js"></script>
  <script src="../Resources/js/jquery.countdown.min.js"></script>
  <script src="../Resources/js/jquery.magnific-popup.min.js"></script>
  <script src="../Resources/js/bootstrap-datepicker.min.js"></script>
  <script src="../Resources/js/aos.js"></script>
  <script src="../Resources/js/jquery.fancybox.min.js"></script>
  <script src="../Resources/js/main.js"></script>
    
  </body>
  </html>