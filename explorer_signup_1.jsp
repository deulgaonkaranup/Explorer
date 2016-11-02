<!DOCTYPE html>
<html>
<head>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">Trips</a></li>
  <li><a href="#contact">What's new</a></li>
  <li style="float:right"><a href="user_register.jsp">Create Account</a></li>
  <li style="float:right"><a href="user_login.jsp">Login</a></li>

</ul>

<%String errorMsg=(String)session.getAttribute("errorMsg");%>




<div id="container_demo" >
	<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
	<div id="wrapper">
		<div id="login" class="animate form">
			<form  action= "explorer_signup.jsp" method="post"> 
				<h1>Create Account</h1> 
				  <%try{
    					if(!errorMsg.equals("null")){%>

            					<h1><%=errorMsg%></h1>
    								<%}
       					}
    				catch(Exception e)
  				{}%>
				<p> 
					<label for="fname" class="fname"> First name </label>
					<input id="fname" name="fname" required="required" type="text"/>
				</p>
				<p> 
					<label for="lname" class="lname" > Last name </label>
					<input id="lname" name="lname" required="required" type="text"/>
				</p>
				<p> 
					<label for="username" class="username" > Username </label>
					<input id="username" name="username" required="required" type="text"/>
				</p>
				
				<p> 
					<label for="contact" class="contact" > Contact </label>
					<input id="contact" name="contact" required="required" type="text"/>
				</p>
				<p> 
					<label> Email id </label>
					<input name="email_id" required="required" type="text"/>
				</p>

				<p> 
					<label for="pass" class="pass"> Create password </label>
					<input id="pass" name="pass" required="required" type="password" /> 
				</p>
				<p> 
					<label for="pass" class="pass"> Confirm password </label>
					<input id="cpass" name="cpass" required="required" type="password" /> 
				</p>


				
				<p> 
					<input type="submit" value="Register" /> 
				</p>
			</form>
		</div>

</div>
</div>

</body>		

</html>


