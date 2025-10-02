<%@ include file="header.jsp" %>
<head>
	<style>
		
		body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 50px 20px;
            margin-top: -80px;
        }

        .form-container {
            width: 100%;
		    background: linear-gradient(to top, rgba(0,0,0,0.8)50%, rgba(0,0,0,0.8)50%);
		    background-position: center;
		    background-size: cover;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            color: white;
        }
        
		.des {
			text-align: center;
            font-size: 20px;
            font-weight: bold;
		}
		
        .form-container .heading {
	        width:220px;
		    font-family: sans-serif;
		    color: #fff;
		    background-color: #ff4f00;
		    border-radius: 10px;
		    margin-left: 280px;
		    padding: 8px;
            text-align: center;
            font-size: 30px;
        }

        label {
            font-weight: bold;
        }

		.row{
			font-size: 18px;
		}

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #ff5800;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #ff6816;
        }

		
	</style>
	
	
</head>

<div class="container">           
     <div class="row " style="margin-top: 50px">
         <div class="form-container">
             <h2 class="heading">Feedback</h2><br>
             <p class="des"> Please provide your valuable feedback below: </p> <br>
             <form id="reused_form" action="send-feedback.jsp" method="POST">
                 <div class="row">
                     <div class="col-sm-12 form-group">
                         <label>How do you rate your overall experience?</label>
                         <p>
                             <label class="radio-inline">
                                 <input type="radio" name="experience" id="radio_experience" value="Bad" >
                                 Bad 
                             </label>
                             <label class="radio-inline">
                                 <input type="radio" name="experience" id="radio_experience" value="Average" >
                                 Average 
                             </label>
                             <label class="radio-inline">
                                 <input type="radio" name="experience" id="radio_experience" value="Good" >
                                 Good 
                             </label>
                         </p><br>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12 form-group">
                         <label for="comments"> Comments:</label>
                         <textarea class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                     </div>
                 </div><br>
                 <div class="row">
                     <div class="col-sm-6 form-group">
                         <label for="name"> Your Name:</label>
                         <input type="text" class="form-control" id="name" name="name" required>
                     </div><br>
                     <div class="col-sm-6 form-group">
                         <label for="email"> Email:</label>
                         <input type="email" class="form-control" id="email" name="email" required>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-sm-12 form-group">
                         <input type="submit"  class="btn btn-lg btn-warning btn-block" value="SUBMIT"></input>
                     </div>
                 </div>
             </form>
             <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Posted your feedback successfully!</h3> </div>
             <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
         </div>
     </div>
 </div>
</body>
</html>