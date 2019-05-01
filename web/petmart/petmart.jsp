<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
    
    if(request.getSession().getAttribute("uname")==null)
    {
%>
<script>
        location = "Login.jsp";
    </script>
    <%
    }
    else
    {
    %>
<!DOCTYPE html>
<html>
<head>
<title>Pet Shop | PetMart</title>
<meta charset="iso-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<!--[if IE 6]><link href="css/ie6.css" rel="stylesheet" type="text/css"><![endif]-->
<!--[if IE 7]><link href="css/ie7.css" rel="stylesheet" type="text/css"><![endif]-->
</head>
<body>
<div id="header"> <a href="#" id="logo"><img src="images/logo.gif" width="310" height="114" alt=""></a>
  <ul class="navigation">
    <li><a href="Home.jsp">Home</a></li>
    <li class="active"><a href="petmart.jsp">PetMart</a></li>
    <li><a href="about.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact us</a></li>
    <li><a href="Login.jsp">Sign-In</a></li>
    <li><a href="Signup.jsp">Sign-Up</a></li>
  </ul>
</div>
<div id="body">
  <div id="content">
    <div class="search">
        <form name="" action="" method="post">
            <input type="text" name="s" value="Find">
            <button type="submit" value="Search">&nbsp;</button>
        </form>
    </div>
    <div class="content">
      <ul>
      	<li> <img src="images/cat3.jpg" width="140" height="250" alt="">
          <h2>Animals</h2>
          <span>Dogs</span> <span>Fishes</span> <span>Cats</span> <span>Birds</span> <span></span> <span></span> <span></span> <span>Small Pet</span> <span>Large Pet</span></li></li>
        <li> <img src="images/koi2.jpg" width="140" height="250" alt="">
          <h2>Food Area</h2>
          <span>Dog Food</span> <span>Cat Food</span> <span>Bird Food</span> <span>Fish Food</span> <span>Reptile Food</span> <span>Small Pet Food</span> <span>Large Pet Food</span></li> </ul>
    </div>
    <div id="sidebar"> <a href="#"><img src="images/discount.jpg" width="300" height="790" alt=""></a> </div>
  </div>
  <div class="featured">
    <ul>
      <li><a href="#"><img src="images/organic-and-chemical-free.jpg" width="300" height="90" alt=""></a></li>
      <li><a href="#"><img src="images/good-food.jpg" width="300" height="90" alt=""></a></li>
     
    </ul>
  </div>
</div>
<div id="footer">
  
  <div id="footnote">
    <div class="section">Copyright@PetMart.All rights reserved </div>
  </div>
</div>
</body>
</html>
<%
    }
%>