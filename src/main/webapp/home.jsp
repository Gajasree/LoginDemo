<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/stylesheet.css" rel="stylesheet" type="text/css" media="all">




<title>The Pet Shop</title>
<meta charset="UTF-8">
<img src="petlogo.jpeg" style="width: 250px;" >
</head>
<body>

         <div class="header">
         
        </div>
        
        <div class="navbar">
          <a href="#" class="active">Home</a>
          <a href="#">Checkout</a>
          <a href="#" >Buy Pets</a>
           <a href="login.jsp" class="right">Logout</a>
        </div>
        
        
      
        <!-- -->
          <div class="main">
            <h2><center>Choose Your Pet!</center></h2>
            <table class="pets">
                <tr>
                    <td>
                        <div class="card" style="margin: 10px;">
                           <a href="dogcategory.jsp"> <img src="dog.gif" alt="Avatar" style="width:250px"></a>
                            <div class="container">
                                <h3><b><center>Dogs</center></b></h3> 
                            </div>
                            </div>
                    </td>
                    <td>
                        <div class="card" style="margin: 10px;">
                           <a href="catacc.jsp"> <img src="cat.gif" alt="Avatar" style="width:300px" ></a>
                            <div class="container">
                                <h3><b><center>Cats</center></b></h3> 
                            </div>
                            </div>
                    </td>
                    <td>
                        <div class="card">
                           <a href="fishcategory.jsp"> <img src="fish.gif" alt="Avatar" style="width:250px"></a>
                            <div class="container">
                                <h3><b><center>Fishes</center></b></h3> 
                            </div>
                            </div>
                    </td>
                </tr>
            </table>    

           <footer>
            <a href="https://www.facebook.com/"><img src="fb.png" style="width:65px"></a>
            <a href="https://www.instagram.com/">  <img src="insta.png" style="width: 75px;"> </a>           
            <a href="https://api.whatsapp.com/send?phone=919080993216&text=Welcome%20to%20The%20Pet%20Shop!"> <img src="whatsapp.png" style="width: 75px;"> </a>
        </footer>
</body>
</html>