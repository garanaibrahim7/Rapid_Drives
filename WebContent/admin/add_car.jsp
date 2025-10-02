<%@ include file = "header.jsp" %>

<head>
    
    <link  rel="stylesheet" href="CSS/add_car.css">
    
</head>

<% if(session.getAttribute("admin") == null) {
	response.sendRedirect("index.jsp");	
}	
%>

 <div class="main">
        
        <div class="register">
        <h2>Enter Details Of New Car</h2>
        <form id="register"  action="do_add_car.jsp" method="POST">    
            
            <input type ="text" name="name"
            id="name" placeholder="Enter Car Name" required>
            <br><br>		
                        
            <input type="number" name="capacity" min="1"
            id="name" placeholder="Enter Capacity Of Car" required>
            <br><br>
                        
            <input type="number" name="rent" min="1"
            id="name" placeholder="Enter Rent Of Car for One Day(in rupees)" required>
            <br><br>
            
            
			<table>
		        <tr>
		            <td>
		                <input type="radio" id="one" name="fuel" value="Petrol" required/>
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
		        </tr>
		 	</table>	 	
                        
            <input type ="text" name="image"
            id="name" placeholder="Enter Image Name with extention Properly" required>
           <br><br>
           <div style="font-family: sans-serif; font-size:16px;">* Currently, Image Upload is Not Possible in<br>
            Current Version of Java <br>
            So enter Image and it's Path Properly....<br><br>
            And Paste Image at ../WebContent/cars</div>

            <input type="submit" class="btnn"  value="ADD CAR" name="addcar" />
                
        </form>
        </div> 
    </div.main>

<%@ include file="footer.jsp" %>