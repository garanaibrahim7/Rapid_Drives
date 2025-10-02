<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="../connection.jsp" %>

<%
String book_id = request.getParameter("book_id");
String car_name = request.getParameter("car_name");

try {
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT *FROM bookings where book_id='"+book_id+"'");
    
    if(rs.next()){
    	String status = rs.getString("status");
	   	if(status.equals("Processing") || status.equals("Declined")) {
	   		response.sendRedirect("bookings.jsp");
	   	}
	   	else{
			PreparedStatement ps = con.prepareStatement("update bookings set status='Rent Completed' where book_id='"+book_id+"'");
			ps.executeUpdate();
			
			PreparedStatement ps2 = con.prepareStatement("update cars set available='YES' where name='"+car_name+"'");
			ps2.executeUpdate();
			
			response.sendRedirect("bookings.jsp");
	   	}
    }
} catch(Exception e) {
	out.print(e);
}
%>