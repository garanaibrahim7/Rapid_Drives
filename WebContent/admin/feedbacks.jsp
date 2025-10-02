<%@ include file="header.jsp" %>
<%@ include file="../connection.jsp" %>
<head>
<link  rel="stylesheet" href="CSS/table.css">
</head>

<div>
        <h1 class="header">FEEDBACKS OF USERS</h1>
            <div>
                <div>
                    <table class="content-table">
                <thead>
                    <tr>
                        <th>NAME</th>
                        <th>EMAIL</th> 
                        <th>RESPONSE</th>
                        <th>COMMENT</th>
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
    	rs = st.executeQuery("SELECT *FROM feedbacks");

   		while (rs.next()) {		
%>                
               
                <tr  class="active-row" style="font-size:20px;">
                    
                    <td><% out.print(rs.getString("name")); %></td> 
                    <td><% out.print(rs.getString("email")); %></td>
                    <td><% out.print(rs.getString("resp")); %></td>                    
                    <td><% out.print(rs.getString("comment")); %></td>
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