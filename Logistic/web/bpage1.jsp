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
	
String custname=request.getParameter("textfield");
			String address=request.getParameter("textfield2");
            String pnum=request.getParameter("textfield3");
			String                   email=request.getParameter("textfield4");
	
			
             String dd=request.getParameter("select4");
			String mm=request.getParameter("select5");
			String yy=request.getParameter("select6");
			String dob;
			dob=dd+"-"+mm+"-"+yy;
			String by1=request.getParameter("select");
			String from1=request.getParameter("select2");
			String to1=request.getParameter("select3");
			String content=request.getParameter("select10");
			String weight=request.getParameter("textfield5");
            String dd1=request.getParameter("select7");
			String mm1=request.getParameter("select8");
			String yy1=request.getParameter("select9");
			String dod="";
			String status="";
			//dod=dd1+"-"+mm1+"-"+yy1;			
	

			
			
			 custname.trim();
			 address.trim();
             pnum.trim();
			 email.trim();
			 by1.trim();
			 from1.trim();
			 to1.trim();
			 content.trim();
			 weight.trim();
			 dob.trim();
			 
		//	dod.trim();

				
			//int found=0;
		//	int found1=0;
			//int flag=0;
		//********************
		
		String sql1="select * from bookreg"; 
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
				
		//**********
			
			String bid="";
			 bid=bid.valueOf(count);
			double r=0;
			if(by1.equals("Water"))
			{
				//	out.println("w");
					r=100;
					
			}
			else if(by1.equals("Air"))
			{
			//out.println("a");
				r=200;
			
			}
			else if(by1.equals("Land"))
			{
			r=50;
		//	out.println("l");
			}
			
			double w=r*Float.parseFloat(weight);
			out.println(w);
			PreparedStatement pstmt=con.prepareStatement("insert into bookreg values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,custname);
			pstmt.setString(2,address);
			pstmt.setString(3,pnum);
			pstmt.setString(4,email);
			pstmt.setString(5,by1);
			pstmt.setString(6,from1);
			pstmt.setString(7,to1);
			pstmt.setString(8,content);
			pstmt.setString(9,weight);
			pstmt.setString(10,dob);
			pstmt.setString(11,bid);
			pstmt.setString(12,dod);
			pstmt.setString(13,status);
			String w1="";
			w1=w1.valueOf(w);
			pstmt.setString(14,w1);
			
								 			
			
			
			pstmt.executeUpdate();
				
                    
					out.println("<h1><p align=center> Carriers and Movers (Logistics Company)</h1></p>");
  			out.println("<h2><p align=center>Booking Registration Page </p></h2>");
			out.println("<h3 align=center>Your Cargo details have been registerd successfully </h3>");
			out.println("<h3 align=center>Your Booking Id is "+bid+"</h3>");
					out.println("<h3 align=center>Your Total Amt to be paid  is "+w+"</h3>");
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
