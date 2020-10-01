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
	
		String fname=request.getParameter("textfield");
           	String lname=request.getParameter("textfield2");  
			String cname=request.getParameter("textfield3");
			String add=request.getParameter("textfield32");
			String city=request.getParameter("select5");
			String state=request.getParameter("select2");
			String country=request.getParameter("select3");
			String pcode=request.getParameter("textfield33");
			String wphone=request.getParameter("textfield34");
			String hphone=request.getParameter("textfield35");
			String mphone=request.getParameter("textfield36");
			String email=request.getParameter("textfield37");
			String fax=request.getParameter("textfield38");
//out.print("test00");
			/* fname.trim();
			 lname.trim();
             cname.trim();
            add.trim();
            city.trim();
            state.trim();
            country.trim();
			pcode.trim();
			wphone.trim();
			hphone.trim();
			mphone.trim();
			email.trim();
			fax.trim();
			*/	
			//int found=0;
		//	int found1=0;
			//int flag=0;
		//********************
	//	out.print("test1");
		String sql1="select * from cust"; 
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
			
			String cid="";
			 cid=cid.valueOf(count);
		//	out.print("test2");
			PreparedStatement pstmt=con.prepareStatement("insert into cust values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,fname);
			pstmt.setString(2,lname);
			pstmt.setString(3,cname);
			pstmt.setString(4,add);
			pstmt.setString(5,city);
			pstmt.setString(6,state);
			pstmt.setString(7,country);
			pstmt.setString(8,pcode);
			pstmt.setString(9,wphone);
			pstmt.setString(10,hphone);
			pstmt.setString(11,mphone);
			pstmt.setString(12,email);
			pstmt.setString(13,fax);									 			
			pstmt.setString(14,cid);									 			
			
			
			pstmt.executeUpdate();
				
                    
			out.println("<h1><p align=center> Carriers and Movers (Logistics Company)</h1></p>");
  			out.println("<h2><p align=center>Customer Registration Page </p></h2>");
			out.println("<h3 align=center>Your Customer Has Been registerd successfully </h3>");
			out.println("<h3 align=center>Your Customer Id is "+cid+"</h3>");
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
