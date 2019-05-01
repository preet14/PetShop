<%-- 
    Document   : AdminDelivers
    Created on : Apr 14, 2019, 9:20:02 AM
    Author     : user
--%>
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
<%@page import="Modal.OrdersTable"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
        <title>Pet Shop</title>

<style>

* {
box-sizing: border-box;
}
   body{
      background-image: url(t.jpg);
      -webkit-background-size:cover;
      background-size: cover;
      background-position: center center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-color: #999;
      height: 100%;
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
     }
header {
  text-align: center;
  color:white;
  border: 5px solid rgba(0,0,0,.5); 
  background: rgba(0,0,0,.5);
  box-sizing: content-box;
}
nav {
  overflow: hidden;
  background-color: #e9e9e9;
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

/*----table----*/

table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  margin: 0;
  padding: 0;
  width: 100%;
  table-layout: fixed;
}

table caption {
  border: 5px solid rgba(0,0,0,.5); 
  background: rgba(0,0,0,.5);
  box-sizing: content-box;
  font-size: 2.5em;
  margin: .5em 0 .85em;
  color:white;
  font-weight: bold;
}

table tr {
  background-color: #f8f8f880;
  border: 1px solid #ddd;
  padding: .35em;
}

table th,
table td {
  padding: .625em;
  text-align: center;
}

table td{
  font-weight: bold;
}

table td a{
  display: block;
  color: #f1f1f1;
  text-align: center;
  text-decoration: none;
  font-size: 12px;
  background-color:dodgerblue;
  border-radius: 3px; 
}

table th {
  font-size: 1em;
  letter-spacing: .1em;
  text-transform: uppercase;
  background-color: #000000b3;
color: #f1f1f1;
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.3em;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 3px solid #ddd;
    display: block;
    margin-bottom: .625em;
  }
  
  table td{
    border-bottom: 1px solid #141111cc;
    display: block;
    font-size: .8em;
    text-align: right;
  }
  table td a{
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: center;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}

/*-----*/

@media (max-width: 768px) {
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
</style>
</head>
<body>

<header>
<h1>Pet Shop</h1>
</header>

<nav>
    <a  href="AdminDashboard.jsp">Home</a>
            <a href="AddPet.jsp">Add Pet</a>
            <a  href="ShowOrders">Show Orders</a>
            <a class="active" href="ShowDelivers">Show Delivers</a>
            <a href="allPets">Show All</a>
            <a href="Logout1.jsp">Logout</a>
</nav>
<table>
    <%
       int i=0;
       ArrayList<OrdersTable> ri = (ArrayList<OrdersTable>)session.getAttribute("orderdeliveries");
       if(ri!=null && ri.size()!=0){
    %>
  <caption>View Delivers Pending</caption>
  <thead>
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Mobile Number</th>
      <th scope="col">Breed</th>
      <th scope="col">Age</th>
      <th scope="col">Gender</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      <%
          for(i=0;i<ri.size();i++){
      %>
    <tr>
      <td data-label="S.No"><%= i+1 %></td>
      <td data-label="Name"><%= ri.get(i).getName() %></td>
      <td data-label="Address"><%= ri.get(i).getUaddress() %></td>
      <td data-label="Mobile Number"><%= ri.get(i).getUcontact() %></td>
      <td data-label="Breed"><%= ri.get(i).getBreed() %></td>
      <td data-label="Age"><%= ri.get(i).getAge() %></td>
      <td data-label="Gender"><%= ri.get(i).getGender() %></td>
      <%
          if(ri.get(i).getPermission().equals("granted")){
      %>
      <td data-label="Action"><a href="acceptDellivers?us_name=<%= ri.get(i).getUname() %>&breed=<%= ri.get(i).getBreed() %>&gender=<%= ri.get(i).getGender() %>&age=<%= ri.get(i).getAge() %>" style="font-size:20px ;height:50px;width:100px;padding:10px 20px;">Accept</a></td>
      <%
          }else{
      %>
      <td data-label="Action">Order Delivered</td>
      <%
          }
      %>
    </tr>
    <%
        
        }
    %>
  </tbody>
  <%
    }
    else{
        %>
        <tr>
            <td>
                Nothing to display
            </td>
        </tr>
        <%
    }
   %>
</table>
</body>
</html>
<%
    }
    %>

