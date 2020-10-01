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
			String mname=request.getParameter("textfield2");
            			String lname=request.getParameter("textfield22");
			String gender=request.getParameter("select4");
	
			
             String dd=request.getParameter("select2");
			String mm=request.getParameter("select3");
			String yy=request.getParameter("select5");
			String dob;
			dob=dd+"-"+mm+"-"+yy;
			String address=request.getParameter("textfield24");
			String pnum=request.getParameter("textfield25");
			String email=request.getParameter("textfield26");
			String salary=request.getParameter("textfield27");
			String designation=request.getParameter("select");
			
	

			
			
			 fname.trim();
			 mname.trim();
            			 lname.trim();
			 gender.trim();
			 dob.trim();
			 address.trim();
			 pnum.trim();
			 email.trim();
			 salary.trim();
			 designation.trim();
			
				
			//int found=0;
		//	int found1=0;
			//int flag=0;
		//********************
		
		String sql1="select * from empreg"; 
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
					count=1;
				}
				else	
				{
					count=count+1;
				}
				
		//********** */
		
		String eid="";
			 eid=eid.valueOf(count);
			
			PreparedStatement pstmt=con.prepareStatement("insert into empreg values(?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,fname);
			pstmt.setString(2,mname);
			pstmt.setString(3,lname);
			pstmt.setString(4,gender);
			pstmt.setString(5,dob);
			pstmt.setString(6,address);
			pstmt.setString(7,pnum);
			pstmt.setString(8,email);
			pstmt.setString(9,salary);
			pstmt.setString(10,designation);
		pstmt.setString(11,eid);
								 			
			
			
			pstmt.executeUpdate();
				
                    
			//	out.println("<p align=center>&nbsp;</p><p align=center><img border=0 src=C:\\Program Files\\Apache Software Foundation\\Tomcat 5.0\\webapps\\cp1\\images\\up.gif width=673 height=210></p> " );
			out.println("<h1 align=center><font color=red>Your data submitted successfully </font><img src=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/cp1/images/3d_emoticon_thumbUp.gif></h1>");
			out.println("<h1 align=center>Employee id "+ eid+"</h1>");			

	

		
		}
		catch(Exception e)
		{
			out.println("Error in connectivity"+e);
		}

%>
<body>
</body>
</html>
