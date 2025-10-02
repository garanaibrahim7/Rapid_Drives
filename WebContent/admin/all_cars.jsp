<%@ include file = "header.jsp" %>
<%@ include file="../connection.jsp" %>
<head>
<link  rel="stylesheet" href="CSS/table.css">
<style>

.con-but {
	 margin-top:50px;
	 text-align: center;	 
}
.con-but button{
	width: 200px;
    height: 50px;   
    background: #ff8800;
    border:none;
    font-size: 24px;
    font-weight:bold;
    border-radius: 10px;
    cursor: pointer;
    color:#fff;
    transition: 0.4s ease;
}

.con-but button:hover{
	background: #ff6800;
}

.con-but a{
    text-decoration: none;
    color: black;    
}

</style>
</head>

<div>
        <h1 class="header">ALL CARS</h1>        
            <div>
                <div>
                    <table class="content-table">
                <thead>
                    <tr>
                        <th>CAR ID</th>
                        <th>CAR NAME</th>
                        <th>FUEL</th>
                        <th>CAPACITY</th> 
                        <th>RENT</th>
                        <th>AVAILABLITY</th>                       
                        <th>UPDATE DETAILS</th>
                        <th>DELETE CAR DETAILS</th>
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
    	rs = st.executeQuery("SELECT *FROM cars");

   		while (rs.next()) {
		
%>                
               
                <tr  class="active-row">
                    
                    <td><% out.print(rs.getInt("id")); %></td>
                    <td><% out.print(rs.getString("name")); %></td>                    
                    <td><% out.print(rs.getString("fuel")); %></td> 
                    <td><% out.print(rs.getString("capacity")); %></td>
                    <td><% out.print(rs.getString("rent")); %></td>                    
                    <td><% out.print(rs.getString("available")); %></td>                                       
                    <td><button type="submit" class="but" name="update"><a href="update_car.jsp?id=<% out.print(rs.getInt("id")); %>">UPDATE</a></button></td>
                    <td><button type="submit" class="but" name="delete"><a href="del_car.jsp?id=<% out.print(rs.getInt("id")); %>">DELETE</a></button></td>
                </tr>
               
                	
<%	} %>

			</tbody>
                </table>
                
                </div>
            </div>
            <div class="con-but"><button><a href="add_car.jsp">+ ADD CARS</a></button></div>
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