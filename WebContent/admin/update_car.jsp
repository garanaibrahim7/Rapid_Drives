<%@ include file = "header.jsp" %>
<% if(session.getAttribute("admin") != null) {
%>
<head>
    
    <link  rel="stylesheet" href="CSS/add_car.css">
    
</head>
<%@ include file="../connection.jsp" %>

<%

	String id = request.getParameter("id");	

	ResultSet rs;
	Statement st;
	
	st=con.createStatement();
	rs=st.executeQuery("select *from cars where id = '"+id+"'");
	rs.next();
	String fuel = rs.getString("fuel");
%>
 <div class="main">
        
        <div class="register">
        <h2>Update Details Of Car</h2>
        <form id="register"  action="do_update_car.jsp" method="POST">
            <input type="hidden" name="id" value="<%= id %>" />
            <input type ="text" name="name"
            id="name" placeholder="Enter Car Name" value="<%= rs.getString("name") %>" required>
            <br><br>		
                        
            <input type="number" name="capacity" min="1"
            id="name" placeholder="Enter Capacity Of Car" value="<%=rs.getString("capacity")%>" required>
            <br><br>
                        
            <input type="number" name="rent" min="1"
            id="name" placeholder="Enter Rent Of Car for One Day(in rupees)" value="<%=rs.getString("rent")%>" required>
            <br><br>
            <table>
		        <tr>
            <%
            	if(fuel.equals("Petrol")){ %>
            		
            		<td>
		                <input type="radio" id="one" name="fuel" value="Petrol" checked required />
		                <label for="one">Petrol</label>
		            </td>
		            <td>
		                <input type="radio" id="two" name="fuel" value="Diesel" required/>
		                <label for="two">Diesel</label>
		            </td>
		            <td>
		                <input type="radio" id="three" name="fuel" value="Electric" required/>
		                <label for="three">Electric</label>
		            </td>
            		
	            <%	} else if(fuel.equals("Diesel")){%>
	    		
	    		<td>
	                <input type="radio" id="one" name="fuel" value="Petrol" required />
	                <label for="one">Petrol</label>
	            </td>
	            <td>
	                <input type="radio" id="two" name="fuel" value="Diesel" checked required/>
	                <label for="two">Diesel</label>
	            </td>
	            <td>
	                <input type="radio" id="three" name="fuel" value="Electric" required/>
	                <label for="three">Electric</label>
	            </td>
	    		
			    <%	} else if(fuel.equals("Electric")){%>
				
				<td>
			        <input type="radio" id="one" name="fuel" value="Petrol" required />
			        <label for="one">Petrol</label>
			    </td>
			    <td>
			        <input type="radio" id="two" name="fuel" value="Diesel" required/>
			        <label for="two">Diesel</label>
			    </td>
			    <td>
			        <input type="radio" id="three" name="fuel" value="Electric" checked required/>
			        <label for="three">Electric</label>
			    </td>
		
				<%	
	            }
	            %>			
		            
		        </tr>
		 	</table>	 	
                        
            <input type ="text" name="image"
            id="name" placeholder="Enter Image Name with extention Properly" value="<%=rs.getString("image")%>" required>
           <br><br>
           <div style="font-family: sans-serif; font-size:16px;">* Currently, Image Upload is Not Possible in<br>
            Current Version of Java <br>
            So enter Image and it's Path Properly....<br><br>
            And Paste Image at ../WebContent/cars</div>

            <input type="submit" class="btnn"  value="Update CAR Details" name="addcar" />
                
        </form>
        </div> 
    </div.main>
<%
}else{
response.sendRedirect("index.jsp");	
}	
%>
<%@ include file="footer.jsp" %>