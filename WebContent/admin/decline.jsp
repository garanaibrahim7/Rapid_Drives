<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="../connection.jsp" %>

<%
String book_id = request.getParameter("book_id");

try {
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT *FROM bookings where book_id='"+book_id+"'");
    
    if(rs.next()){
    	String status = rs.getString("status");
	   	if(status.equals("Rent Completed")) {
	   		response.sendRedirect("bookings.jsp");
	   	}
	   	else{
			PreparedStatement ps = con.prepareStatement("update bookings set status='Declined' where book_id='"+book_id+"'");
			int a = ps.executeUpdate();
			
			if(a>0){
				response.sendRedirect("bookings.jsp");
			}
	   	}
    }
} catch(Exception e) {
	out.print(e);
}
%>