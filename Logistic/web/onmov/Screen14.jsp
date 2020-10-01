<%@ page import ="java.io.*,java.sql.*" %>
<%
	
		
	try
		{
		
		int cnt=0;
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:lucky","scott","tiger");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from scra7");
 			
				 while(rs.next())
     				    {
					String uuname=rs.getString("STATUS").trim();
					if(uuname.equals("Empty") )
					{
						cnt++;
					}	
			        
           				  }
				if(cnt>0)
				{
					out.println("<h1 align=center>Total Tickets Available</h1>");
					out.println("<h2 align=center>"+cnt+"</h2>");
				}
				else
				{
					out.println("No");

				}
		
	}
        catch(Exception e)
        {
        out.println(e);
        }
               
        
 
      
   


	
%>