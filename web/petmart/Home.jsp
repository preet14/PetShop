<%-- 
    Document   : Home
    Created on : Apr 8, 2019, 8:50:31 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Pet Shop</title>
<meta charset="iso-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  JS -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 -->
<!--[if IE 6]><link href="css/ie6.css" rel="stylesheet" type="text/css"><![endif]-->
<!--[if IE 7]><link href="css/ie7.css" rel="stylesheet" type="text/css"><![endif]-->
<style>
    .featured ul{ 
        display:flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }    
   .col-md-6{
        display:flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
</style>
</head>
<body>
<div id="header"> <a href="#" id="logo"><img src="images/logo.gif" width="310" height="114" alt=""></a>
  <ul class="navigation">
    <li class="active"><a href="Home.jsp">Home</a></li>
    <li><a href="petmart/petmart.jsp">PetMart</a></li>
    <li><a href="about.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact us</a></li>
    <li><a href="Login.jsp">Sign-In</a></li>
    <li><a href="Signup.jsp">Sign-Up</a></li>

  </ul>
</div>
<div id="body">
  <div class="banner">&nbsp;</div>
  <div class="container-fluid" id="content">
    <div class="container content col-md-12">
      <ul>
        <li class="col-md-6"> <a href="#"><img src="images/puppy.jpg" width="114" height="160" alt=""></a>
          <h2>What they need</h2>
          <p>Mirum est notare quam littera gothica, quam nunc putamus parum clara m, ant epo suerit li tterar. </p>
        </li>
        <li class="col-md-6"> <a href="#"><img src="images/cat.jpg" width="114" height="160" alt=""></a>
          <h2>Something good</h2>
          <p>Gothica, quam nun c putamus parum claram, anteposuerit litterarum formas humani tatis per seacula. </p>
        </li>
        <li class="col-md-6"> <a href="#"><img src="images/koi.jpg" width="114" height="160" alt=""></a>
          <h2>Kinds of Fish</h2>
          <p>Quam nunc putamus parum claram, antep osuerit litter arum formas humanitatis per seacula quarta. </p>
        </li>
        <li class="col-md-6"> <a href="#"><img src="images/bird.jpg" width="114" height="160" alt=""></a>
          <h2>Fun birds</h2>
          <p>Mirum est notare quam littera gothica , quam nunc putamus parum claram, anteposuerit. </p>
        </li>
      </ul>
    </div>
    <div id="sidebar" style="float:left;">
<!--      <img src="images/discount.jpg" alt="" width="300" height="790">-->
    </div>
  </div>
  <div class="featured">
    <ul>
      <li class="col-md-6"><a href="#"><img src="images/organic-and-chemical-free.jpg" alt=""></a></li>
      <li class="col-md-6"><a href="#"><img src="images/good-food.jpg"  alt=""></a></li>
      
    </ul>
  </div>
</div>
<div id="footer">
  
  <div id="footnote">
    <div class="section">Copyright @PetPaws.All rights reserved </div>
  </div>
</div>
</body>
</html>
