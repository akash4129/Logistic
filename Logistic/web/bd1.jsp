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
	
			String queryby=request.getParameter("select");
     	//queryby.trim();
		//out.println(queryby);
		        rs=st.executeQuery("select cid,fname,lname,company,addr,city,state,pcode,mphone from cust");
       if(queryby.equals("Customer"))
        {
        rs=st.executeQuery("select cid,fname,lname,company,addr,city,state,pcode,mphone from cust");

         } 
         
      else if(queryby.equals("Booking"))
         {
         	String sql="select bid,custname,address,pnum,from1 ,to1 ,content,weight,dob,status from bookreg ";
         	//where  bid like "+"'"+"Artiste%"+"'";  
         	//out.println(sql);
			rs=st.executeQuery(sql);	
         }	
      else if(queryby.equals("Delivery"))
         {
         	String sql="select bid,custname,address,pnum,from1 ,to1 ,content,weight,dob,status from bookreg where  status like "+"'"+"Delivered%"+"'";  
         	//out.println(sql);
			rs=st.executeQuery(sql);	
         }	
      
      
        //****************
       out.println(" <!DOCTYPE html PUBLIC -//W3C//DTD XHTML 1.0 Transitional//EN http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd>");
	  out.println("<html xmlns=http://www.w3.org/1999/xhtml><head><meta http-equiv=content-type content=text/html; charset=utf-8 /><title>Free website template from 4Templates.com</title><meta name=keywords content= /><meta name=description content= /><link href=default.css rel=stylesheet type=text/css /><style type=text/css><!--	@import url(layout.css);--></style></head><body><div id=wrapper>	<div id=header>		<h1>BellMonte</h1>		<h2>Carriers and Movers (Logistics Company)</h2>	</div>	<div id=main-menu>		<ul>			<li class=first><a href=u.html id=main-menu1 accesskey=1 title=>Back</a><a href=homepage.html id=main-menu1 accesskey=1 title=>Signout</a></li>		</ul>  </div>");
		out.println("<p align=center>Logistics Booking or Delivery/Customer Details </p>");
        
        
        //********* 
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        
        
        //out.println("<body bgcolor = gray ></body>");
        //out.println("<html></head><body background=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/Neel/NEW/bg_01.jpg><table border=1 cellspacing=1 style=border-collapse: collapse bordercolor=#111111 width=100% bgcolor=#FFFF66 height=132 bordercolorlight=#FFFF66 bordercolordark=#FFFF66 background=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/Neel/NEW/tellfriend.jpg><tr><td width=100% height=129><p align=center><b><font size=7><u><font color=#FF6600>EVENT MANAGEMENT CO.</font></u></font></b></p><p align=center><font size=6><b><font color=#FFFFFF><u>Art Co. Events</u></font></b></font><font size=5 color=#00FFFF></font><p align=center><font size=5 color=#FFFF66>A Dreamtree Networks Ltd.</font><p align=center><br>&nbsp;</td></tr></table></body></html>");
        //out.print("<h3><p align=center> The following are the contents of the Table</p>");
        out.println("<p align=center><table border=2 bordercolor=blue cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
        while(rs.next())
         {
                    out.println("<tr>");
                    for(int x=1;x<=n;x++)
                    {
                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
                    }

                    out.print("</tr>");
              }
        out.println("</table></body></html>");
	

		}
		catch(Exception e)
		{
			out.println("Error in connectivity"+e);
		}

%>
<body>
</body>
</html>
