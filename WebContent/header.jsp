<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rapid Drives</title>
    <link  rel="stylesheet" href="CSS/style.css">

</head>
<body>
    <div class="hai">
        <div class="navbar">
            <div class="icon">
                <a href="index.jsp"><h2 class="logo">Rapid Drives</h2></a>
            </div>
            <div class="menu">
                <ul>
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a href="aboutus.jsp">ABOUT</a></li>
                    <li><a href="bookings.jsp">BOOKINGS</a></li>
                    <li><a href="feedback.jsp">FEEDBACK</a></li>
                    <%
                    	if(session.getAttribute("email") != null) {
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