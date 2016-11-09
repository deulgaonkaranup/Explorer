<!doctype html>
<%@ page import ="explorer.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>

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

ResultSet rs=ms.visitedTrips(id);
ResultSet rs1=ms.plannedTrips(id);

%>

<div id="container">
       <nav>
	<div class="width">
    		<ul>
            <li class="start selected" style="float: left; margin-left: -400px;"><a href="explorer_profile.jsp">
            <h4 style="color: white;" ><%=user.fname+" "+user.lname%></h4></a></li>
        		<li class=""><a href="explorer_userHome.jsp">Home</a></li>
                <li class=""><a href="explorer_Profile.jsp">Profile</a></li>
        	    <li class="selected"><a href="explorer_Friends.jsp">Friends</a></li>
         	   	<li><a href="explorer_Message.jsp">Messages</a></li>
                <li><a href="explorer_home.jsp">Logout</a></li>
        	</ul>
	</div>
    </nav>

    <div id="body" class="width" style= "margin-left: -1px;">
                 
<aside class="sidebar small-sidebar right-sidebar" style= "width: 30%; padding-left: 20px;">
   <img src= "images/user_icon.jpg" style= "width: 25px; height: 25px; padding-bottom: 30px;">
 
                    <ul class="blocklist" style= "">
                    <li><h4 style="color: black;" ><%=user.fname+" "+user.lname%></h4></a></li>
                    </ul>
</aside>
</div>
</div>

 

<div class="trips" style= "margin-top: 10px;">
<h3 style= "text-decoration: underline; color: black; padding-bottom: 20px;">Friends</h3>
<h4 style= "padding-left: 400px; text-transform: lowercase;">

<%
ResultSet rs2=ms.friendList(id);
while(rs2.next()){

%>
<form action= "explorer_userProfile.jsp" method= "post">
<input type= "hidden" id="id" style= "text-transform: capitalize;" name="id" value= <%=rs2.getInt("id")%>>
<table  style= "width:600px;"">
<tr><td align= "justify"><img src= "images/user_icon.jpg" style= "width: 25px; height: 25px; padding-bottom: 3px;padding-right: 3px;">
<td><h3 style= "text-transform: capitalize; color: black; width: 360px;"><%=rs2.getString("fname")%>
<%=rs2.getString("lname")%></td>
<td><input type= "submit" id= "View_Profile" value= "View Profile" ></td>
</h3>
</form>
<%}%>
</table>
</h4>
<style>
tr{
    text-align: left;
}
/*"  padding-bottom: 5px; padding-right: 5px; padding-left: 5px;"*/
#View_Profile{
/*margin-left: 20px;*/
padding-top: 5px;
font-family:  sans-serif;
text-transform: uppercase;
outline: 0;
background: #3882D6;
width: 140px;
border: 0;
padding: 15px;
color: #FFFFFF;
font-size: 14px;
-webkit-transition: all 0.3 ease;
transition: all 0.3 ease;
cursor: pointer;
    
}    
</style>



</div>


</body>
 </html>
