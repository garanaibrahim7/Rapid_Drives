<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../connection.jsp" %>

<%
String id = request.getParameter("id");

try {
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT *FROM users where id='"+id+"'");
    
    if(rs.next()){
    	
		PreparedStatement ps = con.prepareStatement("DELETE FROM users where id='"+id+"'");
		int a = ps.executeUpdate();		
		
		response.sendRedirect("users.jsp");	   	
    }
} catch(Exception e) {
	out.print(e);
}
%>
</body>
</html>