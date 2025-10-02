<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register to Rapid Drives</title>
    <link rel="stylesheet" href="../CSS/style.css" type="text/css">

    <style>
        body{
		    width: 100%;
		    background: linear-gradient(to top, rgba(255,255,255,0.6) 100%, rgba(255,255,255,0.9) 0%), url("../images/adminbg2.jpg");
		    background-position: center;
		    background-size: cover;
		    height: 100vh;
		    background-attachment: fixed;
		}
		.form{
		    position: absolute;
		    top:0px;
		    left:650px;
		    width: 300px;
    		height: 350px;
		}
        
    </style>
</head>




</head>
<body>
    <div class="hai">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo">Rapid Drives</h2>
            </div>         
        </div>
    </div>

        <div class="content">
            <h1>Welcome <br><span>Admin</span></h1>
            <p class="par">Please Login to<br>Explore what is Going on ....  </p>
     
            <div class="form" align="center">
                <h2>Login as Admin</h2>
                <form method="POST"> 
                <input type="email" name="email" placeholder="Enter Email Here">
                <input type="password" name="pass" placeholder="Enter Password Here">
                <input class="btnn" type="submit" value="Login" name="login"></input>
                </form>
                <br>
                <p class="liw">or<br>Log in as</p>
                <div class="logins">
                    <a href="../login.jsp">USER</a>             
                </div>
            </div>
            
        </div>
    </div>
    <!-- <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script> -->

</body>
</html>