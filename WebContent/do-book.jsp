<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connection.jsp" %>
<%
	String fnm = request.getParameter("fnm");
	String lnm = request.getParameter("lnm");
	String email = request.getParameter("email");
	String lcno = request.getParameter("lcno");
	String car_name = request.getParameter("car_name");
	String rent = request.getParameter("car_rent");
	String place = request.getParameter("place");
	String days = request.getParameter("dur");
	String ph = request.getParameter("ph");
	
	String full_name = fnm +" "+lnm; 

	String dateString = request.getParameter("date");
	Date date = Date.valueOf(dateString);
	
	try {
		PreparedStatement ps = con.prepareStatement("insert into bookings (full_name,phone,email,lcno,place,car_name,rent,date,days) values('"+full_name+"','"+ph+"','"+email+"','"+lcno+"','"+place+"','"+car_name+"','"+rent+"','"+date+"','"+days+"')");
		int i = ps.executeUpdate();
		
		if(i>0){
			response.sendRedirect("booking_success.jsp");
		} else {
			out.println("not Inserted");
		}
	} catch(Exception e) {
		out.print(e);
	}
%>
</body>
</html>