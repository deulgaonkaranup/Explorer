<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>monopoly - Free CSS Template by ZyPOP</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--
monopoly, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
<%@ page import ="explorer.*" %>
<%MySQLDataStoreUtilities ms= new MySQLDataStoreUtilities();
int id=ms.userID((String)session.getAttribute("username"));
User user=ms.userDetails(id);

%>
<div id="container">

       <nav>
	<div class="width">
    		<ul>

            <li class="start selected" style="padding-right: 550px;"><a href="explorer_profile.jsp"><%=user.fname+" "+user.lname%></a></li>
        		<li class="start selected"><a href="explorer_home.jsp">Home</a></li>
        	    	<li class=""><a href="explorer_login1.jsp">Login</a></li>
         	   	<li><a href="explorer_signup1.jsp">Signup</a></li>

        	</ul>

	</div>
    </nav>
    <div id="body" class="width">





</div>
</div>
</body>
 </html>
