<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%
try


		{
		
		Connection con;
	Statement st;
	ResultSet rs;
	ResultSetMetaData rmd;

		       Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/logic","root","root"); 
st=con.createStatement();
	
	String uname=request.getParameter("textfield");
			String password=request.getParameter("textfield2");
            String fname=request.getParameter("textfield3");
			String eid=request.getParameter("textfield4");
	
			
	

//			String eid="";
			
			 uname.trim();
			 password.trim();
             fname.trim();
				
			//int found=0;
		//	int found1=0;
			//int flag=0;
		
			
			PreparedStatement pstmt=con.prepareStatement("insert into userreg values(?,?,?,?)");
			pstmt.setString(1,uname);
			pstmt.setString(2,password);
			pstmt.setString(3,fname);
			pstmt.setString(4,eid);
			
			
			pstmt.executeUpdate();
				
                    
				out.println("<p align=center>&nbsp;</p><p align=center><img border=0 src=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/cp1/images/register_icon.gif width=100 height=100></p> " );
			out.println("<h1 align=center><font color=red>Your Data Has Been Saved</font><img src=3d_emoticon_thumbUp.gif></h1>");
			out.println("<h1 align=center><a href=http:a.html> Home </a>")	;
		
		
		}
		catch(Exception e)
		{
			out.println("Error in connectivity"+e);
		}

%>
<body>
</body>
</html>
