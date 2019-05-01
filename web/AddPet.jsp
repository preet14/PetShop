<%-- 
    Document   : AddPet
    Created on : Apr 9, 2019, 10:06:08 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<html>
    <head>
        <title>Add Pet</title>
    </head>

    <style>
        /*--------------------------Nav bar--------------------------------*/
        *{
           box-sizing: border-box;
        }
        body{
          background-image: url(t1.jpg);
          -webkit-background-size:cover;
          background-size: cover;
          background-position: center center;
          background-repeat: no-repeat;
          height: 100%;
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;

          background-attachment: fixed;
          background-color: #999;
         }
        header {
          text-align: center;
          color:white;
          border: 5px solid rgba(0,0,0,.5); 
          border-radius: 5px;
          background: rgba(0,0,0,.5);
          box-sizing: content-box;
        }
        nav {
          overflow: hidden;
          background-color: #e9e9e9;
          /*height: 50px;*/
        }
        nav a {
          float: left;
          display: block;
          color: black;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 18px;
        }
        nav a:hover {
          background-color: #c6c6c6;
          color: black;
        }
        nav a.active {
          background-color: #2980B9;
          color: white;
        }
        nav .search-container {
          float: right;
        }
        nav input[type=text] {
          padding: 6px;
          margin-top: 8px;
          font-size: 17px;
          border: none;
        }
        nav .search-container button {
          float: right;
          padding: 6px 10px;
          margin-top: 8px;
          margin-right: 16px;
          background: #c6c6c6;
          font-size: 17px;
          border: none;
          cursor: pointer;
        }
        nav .search-container button:hover {
          background: #9a9a9a;
        }

        /*----------------------------------------------------------*/


        .envelope form label{
              color: black;
              padding: 2px;
              margin-top: 0;
              font-size: 20px;        
          }
        /*----------------------------------------------------------*/

        @media (max-width: 1000px) {
          nav .search-container {
            float: none;
          }
        nav a, nav input[type=text], nav .search-container button {
            float: none;
            display: block;
            text-align: left;
            width: 100%;
            margin: 0;
            padding: 14px;
          }
        nav input[type=text] {
            border: 1px solid #ccc;  
          }
        }
        /*--------------------------------*/

.wrapper{
  margin:0 auto;
  padding-top:1%;
  position:relative;
}
.wrapper-2{
  width:14%;
  margin:0 auto;
  text-align:right;
}
.bus{
  width:120px;
  z-index:10;
  animation: bounce 100ms infinite alternate;
}
.road{
  position:absolute;
  bottom:2px;
  right:inherit;
  animation: road 1s ease-out infinite;
}

@keyframes road{
  0%{
    transform: translateX(0);
  }
  75%{
    opacity:1;
  }
  100%{
    transform: translateX(-250%);
    opacity:0;
  }
  
}

@keyframes size{
  from{
    transform: scale3d(0.75, 0.75, 0.75);
    transform: translateX(-350%);

  }
  
  20%{
            transform: scale3d(1, 1, 1); 
  }
  
  to {
       transform: scale3d(0.75, 0.75, 0.75);
       transform: translateX(-350%);
    }
}

@keyframes bounce{
  0%{
  transform:translateY(0)
  }
  100%{
    transform:translateY(-1%)
  }
}
    
    </style>

    <!-----Including CSS for different screen sizes----->
    <link rel="stylesheet" type="text/css" href="responsiveform.css">
    <link rel="stylesheet" media="screen and (max-width: 1200px) and (min-width: 601px)" href="responsiveform1.css" />
    <link rel="stylesheet" media="screen and (max-width: 600px) and (min-width: 351px)" href="responsiveform2.css" />
    <link rel="stylesheet" media="screen and (max-width: 350px)" href="responsiveform3.css" />

    <script type="text/javascript">
    </script>

    <body>
        <nav>
            <a  href="AdminDashboard.jsp">Home</a>
            <a class="active" href="AddPet.jsp">Add Pet</a>
            <a href="ShowOrders">Show Orders</a>
            <a href="ShowDelivers">Show Delivers</a>
            <a href="allPets">Show All Pets</a>
            <a href="Logout1.jsp">Logout</a>
        </nav>

        <div class="envelope">
            <form action="savePet" method="post" name="myForm">
                <header>
                 <h2>Add Pet</h2>
                </header>
                <label>Breed</label>
                <input type="text" name="breed" placeholder="Enter Pet Breed">
                <label>Gender</label>
                <input type="text" name="gender" placeholder="Enter Pet Gender">
                <label>Age</label>
                <input name="age" placeholder="Enter Pet Age" type="text" width="100px;">
                <label>Price</label>
                <input name="price" placeholder="Enter Pet Price" type="text" width="100px;">
                <input id="submit" type="submit" value="Save">
            </form>
        </div>
    
    </body>

</html>
<%
    }
%>
