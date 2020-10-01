<%@ page import ="java.io.*,java.sql.*"%>
<%

	String c1=request.getParameter("param1");
	out.println(c1+"<br>");
	String c2=request.getParameter("param2");
	out.println(c2+"<br>");
	String c3=request.getParameter("param3");
	out.println(c3+"<br>"); 
	
	String seats[]={" "," "," "};
	seats[0]=c1;
	seats[1]=c2;
	seats[2]=c3;
	
	out.print(seats[0]); 
	out.print(seats[1]); 
	out.print(seats[2]); 
	


           try
           {
           
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection con = DriverManager.getConnection("Jdbc:Odbc:logic","scott","tiger");
				String str="";
                    String stat="0";       
              
              	out.print("hello1");
              for(int i=0;i<3;i++)
              {
              
              out.print("hello2");
              out.print(seats[i].trim());
              	
              	if(seats[i].equals("1"))
              	{
              		
              		 str = "update seats set status=? where sno = ?";
              		PreparedStatement pst=con.prepareStatement(str);		
              		
              		pst.setString(1,stat);
              		pst.setString(2,seats[i].trim());
              		out.print(str);
              		pst.executeUpdate();
              		
              		out.print("done1");
              		
              	}
              	
              	else if(seats[i].equals("2"))
              	{
              		str = "update seats set status=? where sno = ?";
              		PreparedStatement pst=con.prepareStatement(str);		
              		
              		pst.setString(1,stat);
              		pst.setString(2,seats[i].trim());
              		out.print(str);
              		pst.executeUpdate();
              		
              		out.print("done2");
              	}
              	else if(seats[i].equals("3"))
              	{
              		str = "update seats set status=? where sno = ?";
              		PreparedStatement pst=con.prepareStatement(str);		
              		
              		pst.setString(1,stat);
              		pst.setString(2,seats[i].trim());
              		out.print(str);
              		pst.executeUpdate();
              		
              		out.print("done3");
              	}
              
              		
              	
              }
              
             }catch(Exception e)
             {
             		out.print(e);
             	
             }
             
              
              
              
              
%>