<%@ include file="header.jsp" %>
<%@ include file="../connection.jsp" %>
<head>
<link  rel="stylesheet" href="CSS/table.css">
<style>

.content-table{   	
    font-size: 11px;
    width: 800px;
}
.but{
	width: 80px;
    height: 30px;
    font-size: 12px;
    font-weight:bold;
}

</style>
</head>

<div>
        <h1 class="header">BOOKINGS</h1>
            <div>
                <div>
                    <table class="content-table">
                <thead>
                    <tr>
                        <th>BOOKING ID</th>
                        <th>CAR NAME</th>
                        <th>RENT</th>
                        <th>PHONE NUMBER</th>
                        <th>EMAIL</th> 
                        <th>CUSTOMER NAME</th>
                        <th>LICENSE NO</th>                       
                        <th>BOOK PLACE</th> 
                        <th>BOOK DATE</th>
                        <th>DURATION</th>                           
                        <th>BOOKING STATUS</th>
                        <th>APPROVE</th>
                        <th>DECLINE</th>
                        <th>CAR RETURNED</th>
                    </tr>
                </thead>
                <tbody>
<%
if(session.getAttribute("admin") != null) {
	String email=(String)session.getAttribute("admin");
	
	ResultSet rs;
	Statement st;
	try {
    	st = con.createStatement();
    	rs = st.executeQuery("SELECT *FROM bookings");

   		while (rs.next()) {
		
%>                
               
                <tr  class="active-row">
                    
                    <td><% out.print(rs.getInt("book_id")); %></td>
                    <td><% out.print(rs.getString("car_name")); %></td>                    
                    <td><% out.print(rs.getString("rent")); %></td> 
                    <td><% out.print(rs.getString("phone")); %></td>
                    <td><% out.print(rs.getString("email")); %></td> 
                    <td><% out.print(rs.getString("full_name")); %></td>                    
                    <td><% out.print(rs.getString("lcno")); %></td>                   
                    <td><% out.print(rs.getString("place")); %></td>
                    <td><% out.print(rs.getDate("date")); %></td>
                    <td><% out.print(rs.getString("days")); %></td> 
                    <td><% out.print(rs.getString("status")); %></td>                   
                    
                    <td><button type="submit"  class="but"  name="approve"><a href="approve.jsp?book_id=<% out.print(rs.getInt("book_id")); %>&car_name=<% out.print(rs.getString("car_name")); %>">APPROVE</a></button></td>
                    <td><button type="submit"  class="but"  name="approve"><a href="decline.jsp?book_id=<% out.print(rs.getInt("book_id")); %>">DECLINE</a></button></td>
                    <td><button type="submit" class="but" name="approve"><a href="returned.jsp?book_id=<% out.print(rs.getInt("book_id")); %>&car_name=<% out.print(rs.getString("car_name")); %>">RETURNED</a></button></td>
                </tr>
               
                	
<%	} %>

			</tbody>
                </table>
                
                </div>
            </div>
        </div>
        <%
} catch (SQLException e) {
		e.printStackTrace();
}
} else {
	response.sendRedirect("index.jsp");
}
%>

<%@ include file="footer.jsp" %>