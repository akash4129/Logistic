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
	
	String bid=request.getParameter("textfield");
                        String status=request.getParameter("select");  
			String dd=request.getParameter("select2");
			String mm=request.getParameter("select3");
			String yy=request.getParameter("select4");
			String dod;
			dod=dd+"-"+mm+"-"+yy;
			
			
			 bid.trim();
			 status.trim();
             dod.trim();
				
			//int found=0;
		//	int found1=0;
			//int flag=0;
		//********************
		
	/*	String sql1="select * from cust"; 
				rs=st.executeQuery(sql1);
				
			int count=0;
				while(rs.next())
				{
					
					count ++;
				
				}
				//out.println("hell2");
				rs.close();
			   //out.println("hell2");
				if (count==0)
				{
					count=1000;
				}
				else	
				{
					count=count+1000;
				}
				
		//********** */
			
			//String cid="";
			// cid=cid.valueOf(count);
			
			PreparedStatement pstmt=con.prepareStatement("update bookreg set dod=?,status=? where bid=?");
			
			pstmt.setString(1,dod);
			pstmt.setString(2,status);						 			
			pstmt.setString(3,bid);
			
			
			
			pstmt.executeUpdate();
				
                    
			out.println("<body bgcolor=#FFCCFF><h1><p align=center> Carriers and Movers (Logistics Company)</h1></p>");
  			out.println("<h2><p align=center>Delivery Updation </p></h2>");
			out.println("<h3 align=center>Your information updated successfully </h3>");
			//out.println("<h3 align=center>Your Customer Id is "+cid+"</h3>");
			pstmt.close();

		}
		catch(Exception e)
		{
			out.println("Error in connectivity"+e);
		}

%>
<body>
</body>
</html>
