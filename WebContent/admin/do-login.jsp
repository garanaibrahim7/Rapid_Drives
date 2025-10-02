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
		String email = request.getParameter("email");
		String pw = request.getParameter("pass");
		
		ResultSet rs;
		Statement st;
		
		try {
			st=con.createStatement();
			rs=st.executeQuery("select *from admins where email='"+email+"' and password='"+pw+"'");
			
			if(rs.next()) {
				response.sendRedirect("bookings.jsp");				
				session.setAttribute("admin", rs.getString("email"));
			}
			else {
				%> <script>alert("Incorrect email or Password")
							window.location.href = "index.jsp";
				</script><%
				//response.sendRedirect("login.jsp");				
			}
		}
		catch(Exception e) {
			System.out.print(e);
		}
		
	%>
</body>
</html>