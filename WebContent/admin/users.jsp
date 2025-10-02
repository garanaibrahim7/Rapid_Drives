<%@ include file="header.jsp" %>
<%@ include file="../connection.jsp" %>
<head>
<link  rel="stylesheet" href="CSS/table.css">
</head>

<div>
        <h1 class="header">ALL USERS</h1>
            <div>
                <div>
                    <table class="content-table">
                <thead>
                    <tr>
                        <th>USER ID</th>
                        <th>FIRST NAME</th>
                        <th>LAST</th>
                        <th>EMAIL</th> 
                        <th>PHONE NUMBER</th>
                        <th>LICENSE NO</th>                       
                        <th>GENDER</th>
                        <th>DELETE USER</th>
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
    	rs = st.executeQuery("SELECT *FROM users");

   		while (rs.next()) {
		
%>                
               
                <tr  class="active-row">
                    
                    <td><% out.print(rs.getInt("id")); %></td>
                    <td><% out.print(rs.getString("fnm")); %></td>                    
                    <td><% out.print(rs.getString("lnm")); %></td> 
                    <td><% out.print(rs.getString("email")); %></td>
                    <td><% out.print(rs.getString("ph")); %></td>                    
                    <td><% out.print(rs.getString("lcno")); %></td>
                    <td><% out.print(rs.getString("gen")); %></td>                   
                    
                    <td><button type="submit" class="but" name="delete"><a href="del_user.jsp?id=<% out.print(rs.getInt("id")); %>">DELETE</a></button></td>
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