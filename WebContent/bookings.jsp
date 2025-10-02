<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
<head>
	<style>
		.main{
			text-align: center;		    
		    padding: 20px;
		    box-sizing: border-box;
		    background: #fff;
		    border-radius: 4px;
		    box-shadow: 0 5px 15px rgba(0,0,0,.5);
		    background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);		    
		    align-content: center;
		    width: 500px;
		    height: 150px;
		    margin-top: 60px;
		    margin-left: 520px;
		    border-radius: 10px;	    	
		    top:150px;
		    left: 480px;
		    color: white;
		    font-size: 10px;
		    font-family: Arial;
		}
		.heading{
			text-align: center;
			font-size: 40px;
		    margin-top: 40px;
		}
	</style>
</head>

<body>
<div><h1 class="heading">YOUR BOOKINGS</h1>
<% 

if(session.getAttribute("email") != null) {
	String email=(String)session.getAttribute("email");
    	ResultSet rs;
		Statement st;
    try {
        st = con.createStatement();
        rs = st.executeQuery("SELECT *FROM bookings where email = '"+email+"'");

        while (rs.next()) {			
			
	%>


	<div class="main">
	
		<h1>CAR NAME : <% out.print(rs.getString("car_name")); %></h1><br>
        <h1>NO OF DAYS : <% out.print(rs.getString("days")); %></h1><br>
        <h1>BOOKING STATUS : <% out.print(rs.getString("status")); %></h1><br>
	
	</div>
	
	<% }
    } catch (SQLException e) {
 		e.printStackTrace();
    }
    }else {
    	response.sendRedirect("login.jsp");
    }
	%>
</body>
</html>