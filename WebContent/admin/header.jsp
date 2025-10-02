<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin - Rapid Drives</title>
    <link  rel="stylesheet" href="CSS/style.css">
	<style>
        body{
		    width: 100%;
		    background: linear-gradient(to top, rgba(255,255,255,0.6) 100%, rgba(255,255,255,0.9) 0%), url("../images/adminbg2.jpg");
		    background-position: center;
		    background-size: cover;
		    height: 100vh;
		    background-attachment: fixed;
		}       
		.menu{
		    width: 400px;
		    float: right;
		    height: 70px;
		    padding-right: 250px; 
		
		} 
		ul{
		    float: left;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		}
		
		ul li{
		    list-style: none;
		    margin-left: 62px;
		    margin-top: 27px;
		    font-size: 16px;
		
		}
		
		ul li a{
		    text-decoration: none;
		    color: black;
		    font-family: Arial;
		    font-weight: bold;
		    transition: 0.2s ease-in-out;
		
		}
		
		ul li a:hover{
		    color: #ff5800;
		
		}
    </style>
</head>
<body>
    <div class="hai">
        <div class="navbar">
            <div class="icon">
                <a href="bookings.jsp"><h2 class="logo">Rapid Drives</h2></a>
            </div>
            <div class="menu">
                <ul>
                    <li><a href="all_cars.jsp">VEHICLE MANAGEMANT</a></li>
                    <li><a href="users.jsp">USERS</a></li>
                    <li><a href="bookings.jsp">BOOKING REQUEST</a></li>
                    <li><a href="feedbacks.jsp">FEEDBACKS</a></li>
                    
                  <%
                    	if(session.getAttribute("admin") != null) {
                    %>
                  <li> <button class="adminbtn"><a href="logout.jsp">LOG OUT</a></button></li>
                  	<%
                    	}else{ 
                    %>
                  <li> <button class="adminbtn"><a href="login.jsp">LOG IN</a></button></li>
                    <%	}
                  	%>
                </ul>
            </div>
            
          
        </div>