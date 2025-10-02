<%@ page import="java.sql.*" %>
<%! public Connection con; %>
<%
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/rapiddb", "root", "");
	} catch(Exception e) {
		System.out.print(e);
	}
%>
