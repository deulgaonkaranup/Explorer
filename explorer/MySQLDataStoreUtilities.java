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


}
