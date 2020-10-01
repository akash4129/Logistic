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
			String pword=request.getParameter("textfield2");
			String group=request.getParameter("select").trim();
			uname.trim();
			pword.trim();
			int found=0;
			if(group.equals("Admin"))
			{
			 if(uname.equals("admin")&&pword.equals("admin"))
			{
		
				found=1;
				
			}
			if(found==1)
			{
					//res.sendRedirect("http://localhost:8080/cp1/adminhomepage.html");
response.sendRedirect("a.html");
			}
			else
			{
				out.println("<h1 align=center class=style5>BELLMONTE</h1><p align=center class=style9><h2 align=center> Carriers and Movers (Logistics Company)</h2> </p>");
				out.println("<p align=center><img border=0 src=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/cp1/images/down.gif width=200 height=200></a></p><body background=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/sanju/33.jpg></p>");
out.println("<h1 align=center>Sorry,Login Failed...</font><br><a href=http://localhost:8080//cp1//l.html>Back to SignIn</h1> ");

			//out.println("<p align=left><a href=http://localhost:8080/sanju/home.html><img border=0 src=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/sanju/sanju/home4.gif width=48 height=48></a></p><body ><p align=center><img border=0 src=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/sanju/sanju/index.1.jpg width=848 height=200></p><p align=center>&nbsp;</p>");
			//out.println("<h1 align=center><font color=#00FFFF>Welcome to Online movie ticket booking<br></font>");
				
			}
			}
			else if(group.equals("User"))
			 {
			 
			String sql="select * from userreg where UNAME='"+uname+"'  and  PASSWORD='"+pword+"' ";
			rs=st.executeQuery(sql);
			int found1=0;
			while(rs.next())
			{
				String uuname=rs.getString("UNAME").trim();
				String ppword=rs.getString("PASSWORD").trim();
			
				if(uname.equals(uuname) && pword.equals(ppword))							
				{
					found1=1;
					break;
				}	
			
			}
			
			
			if(found1==1)
			{
			
				//res.sendRedirect("http://localhost:8080/cp1/userhomepage.html");
response.sendRedirect("u.html");
				
				
			}
			
			else
			{
				out.println("<h1 align=center class=style5>BELLMONTE</h1><p align=center class=style9><h2 align=center> Carriers and Movers (Logistics Company)</h2> </p>");
				out.println("<p align=center><img border=0 src=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/cp1/images/down.gif width=200 height=200></a></p><body background=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/sanju/33.jpg></p>");
out.println("<h1 align=center>Sorry,Login Failed...</font><br><a href=http://localhost:8080//cp1//l.htm>Back to SignIn</h1> ");
			
			
			}
		}
		}
		catch(Exception e)
		{
			out.println("Error in connectivity"+e);
		}

%>
<body>
</body>
</html>
