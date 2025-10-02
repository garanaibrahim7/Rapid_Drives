<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../connection.jsp" %>


<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String capacity = request.getParameter("capacity");
	String rent = request.getParameter("rent");
	String fuel = request.getParameter("fuel");	
	String image = request.getParameter("image");	
	
	try {
		PreparedStatement ps = con.prepareStatement("update cars set name='"+name+"', fuel='"+fuel+"', capacity='"+capacity+"',rent='"+rent+"',image='"+image+"' where id = '"+id+"'");
		int i = ps.executeUpdate();
		
		if(i>0){
			response.sendRedirect("all_cars.jsp");
		}
	} catch(Exception e) {
		out.print(e);
	}
	
%>