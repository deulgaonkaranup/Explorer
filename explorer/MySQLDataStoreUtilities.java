package explorer;
import java.util.*;
import java.sql.*;


public class MySQLDataStoreUtilities
{

	public static Connection getConnection()
	{


		Connection conn=null;
			try{

					Class.forName("com.mysql.jdbc.Driver").newInstance();
	  			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/explorer?useSSL=true","root","root");

	 			}
	 catch (Exception e)
	 {

	 }
return conn;
	}



	public static void UserUpdate(User user)
	{

		try{
	Connection conn=getConnection();
	 conn.createStatement().executeUpdate("Insert into usr_acc values("+user.user_id+",\""+user.fname+"\",\""+user.lname+"\",\""+user.contact+"\",\""+user.email_id+"\")");
	 conn.createStatement().executeUpdate("Insert into usr_regist values("+user.user_id+",\""+user.username+"\",\""+user.pass+"\")");

			}
			catch (Exception e)
			{}

	}

public static boolean userValidation(String username)
{
	ResultSet rs=null;
	boolean ret=false;
	try{
Connection conn=getConnection();
int cnt=0;
 rs = conn.createStatement().executeQuery("select username from usr_regist where username=\""+username+"\"" );
while((rs.next())&&(cnt==0))
{
	cnt++;

}
if (cnt==0)
{
	ret=true;
}
		}
		catch (Exception e)
		{}
	return ret;
}

public static int userID()
{
	ResultSet rs=null;
	int id=0;
	try{
Connection conn=getConnection();
 rs = conn.createStatement().executeQuery("select max(user_id) user_id from usr_regist" );
while(rs.next())
{
	id=rs.getInt("user_id");
}
id++;

		}
		catch (Exception e)
		{}
	return id;
}

public static int userLoginValidation(String username,String pass)
{
	ResultSet rs=null;

	int cnt=0;
	try{
Connection conn=getConnection();

 rs = conn.createStatement().executeQuery("select user_id from usr_regist where username=\""+username+"\" and pass=\""+pass+"\"");
while(rs.next())
{
	cnt=rs.getInt("user_id");

}

		}
		catch (Exception e)
		{}
	return cnt;
}
public static int userID(String username)
{
	ResultSet rs=null;

	int cnt=0;
	try{
Connection conn=getConnection();

 rs = conn.createStatement().executeQuery("select user_id from usr_regist where username=\""+username+"\"");
while(rs.next())
{
	cnt=rs.getInt("user_id");

}

		}
		catch (Exception e)
		{}
	return cnt;
}
public static User userDetails(int userid)
{
	ResultSet rs=null;

	User user=new User();
	try{
Connection conn=getConnection();

 rs = conn.createStatement().executeQuery("select * from usr_acc where user_id="+userid);
while(rs.next())
{
	user=new User(userid,"","",rs.getString("fname"),rs.getString("lname"),rs.getString("email_id"),rs.getString("contact"));

}

		}
		catch (Exception e)
		{}
	return user;
}

public static ResultSet visitedTrips(int id)
{
	ResultSet rs=null;

	try{
Connection conn=getConnection();

 rs = conn.createStatement().executeQuery("select it.itinerary_desc,it.visited_date from (select distinct it.itinerary_id from( select itinerary_id from usr_itinerary_grp where user_id="+id+" union all select itinerary_id from usr_itinerary where owner_id="+id+") it) main left outer join usr_itinerary it on it.itinerary_id=main.itinerary_id where it.visited_date <=current_timestamp order by it.visited_date");


		}
		catch (Exception e)
		{}
	return rs;
}

public static ResultSet plannedTrips(int id)
{
	ResultSet rs=null;

	try{
Connection conn=getConnection();

 rs = conn.createStatement().executeQuery("select it.itinerary_desc,it.visited_date from (select distinct it.itinerary_id from( select itinerary_id from usr_itinerary_grp where user_id="+id+" union all select itinerary_id from usr_itinerary where owner_id="+id+") it) main left outer join usr_itinerary it on it.itinerary_id=main.itinerary_id where it.visited_date >current_timestamp order by it.visited_date");


		}
		catch (Exception e)
		{}
	return rs;
}
public static ResultSet friendList(int id)
{
	ResultSet rs=null;

	try{
Connection conn=getConnection();

 rs = conn.createStatement().executeQuery("select idt.id,uc.fname,uc.lname from ((select main.id from ((select user_id_sender id from ur_notifications where notif_type='FRND_RQST' and status='ACCEPTED' and (user_id_sender="+id+" or user_id_reciever="+id+"))union(select user_id_reciever id from ur_notifications where notif_type='FRND_RQST' and status='ACCEPTED' and (user_id_sender="+id+" or user_id_reciever="+id+"))) main where main.id !="+id+") idt left outer join usr_acc uc on uc.user_id=idt.id)");



		}
		catch (Exception e)
		{}
	return rs;
}




}
