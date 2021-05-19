<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
<title>THE PET SHOP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/stylesheet.css" rel="stylesheet" type="text/css" media="all">
    <title>Login</title>
</head>
<body>
  <!-- Header code -->
  <div class="header">
    <table class="head">
        <tr>
            <td><img src="petlogo.jpeg" style="width: 250px;" ></td>
            <td style="text-align: right;"><a href="login.jsp"><button class="button button5" style="width: fit-content;">Login</button></a></td>
        </tr>
    </table>
   </div>
   
   <div class="navbar">
       <ul>
           <li><a class="active" href="#home">Home</a></li>
           <li><a href="#checkout">Checkout</a></li>
           <li><a href="#buypets">Buy Pets</a></li>
         </ul>
   </div>
	<!-- Main div code -->
	<div id="main">
    <div class="h-tag">
    <h2>Create Your Account</h2>
    </div>
    <!-- create account div -->
    <form action="register" method="post">
<div align="center">
    
    <div class="loginpage">
    <table cellspacing="1" align="center" cellpadding="8" border="0">
    <tr>
    <td align="right">Enter User Name :<label style="color: red;" >*</label></td>
    <td><input type="text" name="username" placeholder="Enter user here" id="t1" class="tb" /></td>
    </tr>
    
    <tr>
    <td align="right">Enter Password :<label style="color: red;" >*</label></td>
    <td><input type="password" name="password" placeholder="Enter Password here" id="t2" class="tb" /></td>
    </tr>
    
    <tr>
    <td align="right">Enter Email ID :<label style="color: red;" >*</label></td>
    <td><input type="email" name="emailid" placeholder="Enter Email ID here" id="t3" class="tb" /></td>
    </tr>
    <tr>
    <td align="right">Enter Phonenumber<label style="color: red;" >*</label></td>
    <td><input type="text" name="phonenumber" placeholder="Enter Phonenumber here" id="t4" class="tb" /></td>
    </tr>
    
    
    <tr>
    <td></td>
    <td>
    <input type="submit" value="Create Account" class="btn" onclick="registration()" /></td>
    </tr>
    </table>
    </div>
    </div>
</form>
    <!-- create account box ending here.. -->
    </div>
    <!-- Main div ending here... -->





    <script>
      function registration()
      {
    
        var name= document.getElementById("t1").value;

        var pwd= document.getElementById("t2").value;
        var email= document.getElementById("t3").value;
        var phonenumber= document.getElementById("t4").value;
        
            //email id expression code
        var pwd_expression = /^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&*-])/;
        var letters = /^[A-Za-z]+$/;
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    
        if(name=='')
        {
          alert('Please enter your name');
        }
        else if(!letters.test(name))
        {
          alert('Name field required only alphabet characters');
        }
        else if(pwd=='')
        {
          alert('Please enter Password');
        }
        else if(!pwd_expression.test(pwd))
        {
          alert ('Upper case, Lower case, Special character and Numeric letter are required in Password filed');
        }
        
        else if(document.getElementById("t2").value.length < 6)
        {
          alert ('Password minimum length is 6');
        }
        else if(document.getElementById("t2").value.length > 12)
        {
          alert ('Password max length is 12');
        }
        else if(email=='')
        {
          alert('Please enter your user email id');
        }
        else if (!filter.test(email))
        {
          alert('Invalid email');
        }
        else if(uname=='')
        {
          alert('Please enter the user name.');
        }
        else if(!letters.test(uname))
        {
          alert('User name field required only alphabet characters');
        }
        
       
       
        else
        {				                            
                   alert('Thank You for Login & You are Redirecting to Campuslife Website');
             // Redirecting to other page or webste code. 
             window.location = "http://www.campuslife.co.in"; 
        }
      }
      function clearFunc()
      {
        document.getElementById("t1").value="";
        document.getElementById("t2").value="";
        document.getElementById("t3").value="";
        document.getElementById("t4").value="";
      }
    
    </script>
    <footer>
            <a href="https://www.facebook.com/"><img src="fb.png" style="width:65px"></a>
            <a href="https://www.instagram.com/">  <img src="insta.png" style="width: 75px;"> </a>           
            <a href="https://api.whatsapp.com/send?phone=919080993216&text=Welcome%20to%20The%20Pet%20Shop!"> <img src="whatsapp.png" style="width: 75px;"> </a>
        </footer>
</body>
</html>
