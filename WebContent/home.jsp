<%@ page import="com.mysql.cj.xdevapi.Statement" %>
<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>


<link  rel="stylesheet" href="CSS/car-list.css">

<div class="cd">
    <div class="main">
        
      <div><h1 class="overview">OUR CARS OVERVIEW</h1>

    <ul class="de">
    <% 
    	ResultSet rs;
		Statement st;
    try {
        // Create statement and execute query
        st = con.createStatement();
        rs = st.executeQuery("SELECT *FROM cars");

        // Process result set
        while (rs.next()) {
			if(rs.getString("available").equals("YES")) {
			
	%>		
         
    
    <li>
    <form method="POST">
    <div class="box">
       <div class="imgBx">
            <img src="<% out.print(rs.getString("image")); %>">
        </div>
        <div class="content">            
            <h1><% out.print(rs.getString("name")); %></h1>
            <h2>Fuel Type : <a><% out.print(rs.getString("fuel")); %></a> </h2>
            <h2>CAPACITY : <a><% out.print(rs.getInt("capacity")); %></a> </h2>
            <h2>Rent Per Day : <a>&#8377; <% out.print(rs.getInt("rent")); %>/-</a></h2>
            <button type="submit"  name="booknow" class="utton" style="margin-top: 5px;"><a href="book.jsp?id=<% out.print(rs.getInt("id")); %>">Book</a></button>
        </div>
    </div></form></li>
  
  <% }}
    } catch (SQLException e) {
 		e.printStackTrace();
    }
	%>
            
                 
    </ul>
    </div>
  </div>
  </div>
  
<%@ include file="footer.jsp" %>