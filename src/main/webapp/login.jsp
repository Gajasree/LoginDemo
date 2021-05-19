
        
        
        
        
        <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>THE PET SHOP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/stylesheet.css" rel="stylesheet" type="text/css" media="all">


</head>
<body>
 <div class="header">
    <table class="head">
        <tr>
            <td><img src="petlogo.jpeg" style="width: 250px;" ></td>
             
            <td style="text-align: right;"><a href="register.jsp"><button class="button button5" style="width: fit-content;">New User?Sign Up!</button></a></td>
        </tr>
    </table>
   </div>
   
   <div class="navbar">
       <ul>
           <li><a class="active" href="#home">Home</a></li>
           <li><a href="#checkout">Checkout</a></li>
           <li><a href="#buypets">Buy Pets</a></li>
               <a  href="admin.jsp" class="right">Admin</a>
         </ul>
   </div>
  
 
<div class="container">
 
  
    </div>
  
  
  
  <div align="center">
  
 <h2>ONE STOP DESTINATION FOR PETS</h2><br>
<h1>WELCOME TO PET SHOP</h1>
<font size="5" color="blue">Login Here</font>
<form action="login" method="post">
<table>
<tr>  </tr>
<tr> </tr>
<tr><td>User Name<label style="color: red;" >*</label> </td><td><input type="text"  id="username" name="username"></td></tr>
<tr><td>Password<label style="color: red;" >*</label> </td><td><input type="password" id="password" name="password"></td></tr>
  <tr><td></td><td><input type="submit" value="Login"></td></tr>

</table>
</form>
  
  
  <br><br>
 
   
    
 <footer>
            <a href="https://www.facebook.com/"><img src="fb.png" style="width:65px"></a>
            <a href="https://www.instagram.com/">  <img src="insta.png" style="width: 75px;"> </a>           
            <a href="https://api.whatsapp.com/send?phone=919080993216&text=Welcome%20to%20The%20Pet%20Shop!"> <img src="whatsapp.png" style="width: 75px;"> </a>
        </footer>
        </body>
        </html>