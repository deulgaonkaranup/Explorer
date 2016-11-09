<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>monopoly - Free CSS Template by ZyPOP</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<link rel="stylesheet" href="input.css" type="text/css" />

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

            <li class="start selected" style="float: left; margin-left: -400px;"><a href="explorer_profile.jsp"><h4 style="color: white;" ><%=user.fname+" "+user.lname%></h4></a></li>
                <li class="selected"><a href="explorer_userHome.jsp">Home</a></li>
        		<li class=""><a href="explorer_Profile.jsp">Profile</a></li>
        	    <li class=""><a href="explorer_Friends.jsp">Friends</a></li>
         	   	<li><a href="explorer_Message.jsp">Messages</a></li>
                 <li><a href="explorer_home.jsp">Logout</a></li>
        	</ul>



	</div>
    </nav>
    <div id="body" class="width" style= "margin-left: -1px;">
                 

<aside class="sidebar small-sidebar right-sidebar" style= "width: 30%; padding-left: 10px;">
    
            <ul>    
               <li>
                    <!-- <h4>Blocklist</h4> -->
                    <ul class="blocklist" style= "width: %;">
                    <li><h4><a class="selected" href="explorer_userHome.jsp">Feeds</a></h4></li>
                        <li><h4><a href="trips.jsp">Trips</a></h4></li>

                    </ul>
                </li>
                


</div>
</div>
</body>
 </html>
