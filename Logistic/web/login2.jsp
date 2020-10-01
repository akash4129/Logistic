<%@ page import ="java.io.*,java.sql.*" %>
<%

		//out.println("hjell");
     String bid= request.getParameter("T1").trim();
     String status="",cname="";
     int count=1;
//     String bid="1001";


          try
           {
           //out.println("t1");
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              Connection con = DriverManager.getConnection("jdbc:odbc:logic","cp1","cp1");              
              //out.println("t2");
              Statement st=con.createStatement();
              String str = "select * from bookreg";
              ResultSet rs = st.executeQuery(str);
            //  System.out.println("hiiiiiiiiiiiii");
            			//out.println(bid);
            			//out.println("t3");
            			String tbid="";
              while(rs.next())
              {
              	tbid=rs.getString(11);
              	tbid=tbid.trim();
              	//out.println("tbid="+tbid);
				if(bid.equals(tbid))
                 {
			
                 		status=rs.getString(13);
						cname=rs.getString(1);
     	    			count = 0;
                     break;
                 }
              }

               if(count ==1)
               {
                   out.println("Sorry, Invalid Booking Id....");
                   }
               else
                  {
                  
                  out.println("<br>Your Booking Information ..");
					out.println("<br>Booking Id         ="+bid);
						out.println("<br>Customer Name ="+cname);
					out.println("<br>Status  	             ="+status);
   	             }






 
           }
           catch(Exception e)
           {
           		System.out.println("Exception " + e);
           		}




%>
