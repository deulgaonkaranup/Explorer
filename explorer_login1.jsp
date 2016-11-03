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
    <li><a class="active" href="explorer_home.jsp">Home</a></li>
    <li><a href="#news">Trips</a></li>
    <li><a href="#contact">What's new</a></li>
    <li style="float:right"><a href="explorer_signup1.jsp">Create Account</a></li>
    <li style="float:right"><a href="explorer_login1.jsp">Login</a></li>

  </ul>

</body>

<%String errorMsg=(String)session.getAttribute("errorMsg");%>

<%try{
    if(!errorMsg.equals("null")){%>

            <h1><%=errorMsg%></h1>
          <%}
      }
  catch(Exception e)
{}%>
<div id="container_demo" >
	<div id="wrapper">
		<div id="login" >
			<form  meathod= "post" action="explorer_login.jsp">
				<h1>Login</h1>
				<p>
					<label for="username" class="username" > Username </label>
					<input id="username" name="username" required="required" type="text"/>
				</p>

				<p>
					<label for="pass" class="pass"> Confirm password </label>
					<input id="pass" name="pass" required="required" type="password" />
				</p>

				<p>
					<input type="submit" value="Login" />
				</p>
			</form>
		</div>

</div>
</div>



</html>
