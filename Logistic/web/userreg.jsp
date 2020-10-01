<%@ page import ="java.io.*,java.sql.*,java.util.*"%>
<%

try
{


	String uname=request.getParameter("textfield");
	String password=request.getParameter("textfield2");
	String fname=request.getParameter("textfield3");
	String email=request.getParameter("textfield4");
	
/*	out.println(fname);
	out.println(mname);
	out.println(lname);
	out.println(profession);
	out.println(pno);
	out.println(add);
	out.println(email);
	out.println(look);*/
	
	
	
	
	

Connection conn = DriverManager.getConnection("Jdbc:Odbc:reals","scott","tigerl");

		//ResultSet rs1;
		
		Statement st=conn.createStatement();
		PreparedStatement pstmt;
			 

			pstmt=conn.prepareStatement("insert into userreg values(?,?,?,?)");
				
			pstmt.setString(1,uname);
			pstmt.setString(2,password);
			pstmt.setString(3,fname);
			pstmt.setString(4,email);
			
			
			pstmt.executeUpdate();
			
			out.println("<html><body bgcolor=cyan><h1 align=center>BellMonte Devlopers and Builders <Br> User Registration Completed successfully..<br> <a href=http://localhost:8080/cp2/homepage.html><br>Home Page</a></h1>");
			
			
			out.println("</body></html>");



			 /*String sql1="select * from booking";

			rs1=st.executeQuery(sql1);
			int found1=0;

			while(rs1.next())
			{

				
			String mtid=rs1.getString("tid").trim();
			String mscr=rs1.getString("screentype").trim();
			String mstime=rs1.getString("showtime").trim();
			//String mday=rs1.getString("tid").trim();
			

			if(tid.equals(mtid) && mscr.equals(scr)&& mstime.equals(stim))
			{
					found1=1;
					break;
				}	
			
			}
			

		if(found1==1)
		{

		
			//sql1="select * from booking"; 
			//This is for Time and Date

	    Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

	    String date = month + "/" + dayofmonth + "/" +  year;


 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
	    String time = hour + ":" + min + ":" +  sec;
	    
	    String dt=date+","+time;   */
	    
	    
	    
	    
	    
			
			
			//</td><td>Total Seats</td><td>Show Time</td><td>Screen</td><td>Date of booking</td></tr>");
			
	
	
	/*}
	else
	{
			out.println("<html><body bgcolor=cyan><h1 align=center> Dream theater online Booking Acknowledgement <br></h1>");
			out.println("<h2 align=center>Sorry,Invalid information</h2><br>");
			out.println("<h2 align=center><a href=http://localhost:8080/movbook/825/goforcancel.html>Back</a></h2></body></html>");
	} */
}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
            
%>