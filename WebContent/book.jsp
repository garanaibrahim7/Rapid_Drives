<head>

    <title>CAR BOOKING</title>
    <link  rel="stylesheet" href="CSS/book.css">
    
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
  
   	<%    	
   		if(session.getAttribute("email") != null) {
			String email=(String)session.getAttribute("email");
			
			ResultSet res;
			Statement stmt;
			stmt=con.createStatement();
			
			res=stmt.executeQuery("select *from users where email='"+email+"'");
			res.next();
			
			ResultSet rs;
			Statement st;
			
			String car_id_st = request.getParameter("id");
   			int car_id = Integer.parseInt(car_id_st);
   		
	        st=con.createStatement();
			rs=st.executeQuery("select *from cars where id = '"+car_id+"'");
		
		if(rs.next()) {
			String car_name = rs.getString("name");
	%>       
                
        <div class="main"> 
        
        <div class="register">
            <h2 class="heading">BOOKING</h2>
        <form id="register" method="POST" action="do-book.jsp">
            <h2 class="h2c">Car Name : <% out.print(car_name); %></h2>
            
            <label>Booking From : </label>
            <br>
            <input type="text" name="place"
            id="name" placeholder="Enter Your Destination">
            <br><br>

            <label>Booking Date : </label>
            <br>
            <input type ="date" name="date"
            id="datefield" min='1899-01-01' max='2025-13-13'  placeholder="ENTER THE DATE FOR BOOKING">
            <br><br>

            <label>DURATION : </label>
            <br>
            <input type ="number" name="dur" min="1" max="30" 
            id="name" placeholder="Enter Rent Period (in days)">
            <br><br>

            <label>PHONE NUMBER : </label>
            <br>
            <input type="tel" name="ph" maxlength="10" value="<% out.print(res.getString("ph")); %>"
            id="name" placeholder="Enter Your Phone Number">
            <br><br>
			
			<input type="hidden" name="email" value="<% out.print(email); %>">
			<input type="hidden" name="fnm" value="<% out.print(res.getString("fnm")); %>">
			<input type="hidden" name="lnm" value="<% out.print(res.getString("lnm")); %>">
			<input type="hidden" name="lcno" value="<% out.print(res.getString("lcno")); %>">
			<input type="hidden" name="car_name" value="<% out.print(car_name); %>">
			<input type="hidden" name="car_rent" value="<% out.print(rs.getString("rent")); %>">
			
            <input type="submit"  class="btnn" value="BOOK" name="book" >
            
        </form>
        </div>
    </div>
    <% }
   		}else{
   			response.sendRedirect("login.jsp");
   		}
		%>
        

</body>
</html>