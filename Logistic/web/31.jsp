<html>
<head>
<script type="text/javascript">
cc1=0;
cc2=0;
cc3=0;
function changeimage1()
{
	
	
	/*if (s=="bulboff.gif")
	{
			alert("already booked");
			
	}
	else
	{ */
		if (cc1==0) 
  		{
  				cc1=1;
  				document.getElementById('myimage1').src="bulbon.gif";
  		}
  	
		else
  		{
  				cc1=0;
  				document.getElementById('myimage1').src="bulboff.gif";
  		}
  	 //}

	//return true;
}
function changeimage2()
{
	
if (cc2==0) 
  {
  cc2=2;
  
  document.getElementById('myimage2').src="bulbon.gif";
  }
else
  {
  cc2=0;
  document.getElementById('myimage2').src="bulboff.gif";
  }
  alert(cc2);

}
function changeimage3()
{
alert("hi3");
if (cc3==0) 
  {
  cc3=3;
  document.getElementById('myimage3').src="bulbon.gif";
  }
else
  {
  cc3=0;
  document.getElementById('myimage3').src="bulboff.gif";
  }
  
  
}

function changeimage4()
{

//alert(cc1);
//alert(cc2);
//alert(cc3);

var myjsp2call = "test.jsp?param1="+cc1+"&param2="+cc2+"&param3="+cc3;
//&param2=value2;
window.location.href = myjsp2call;


}


</script>
</head>


	
<%@ page import ="java.io.*,java.sql.*"%>
<%


           try
           {
           
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection con = DriverManager.getConnection("Jdbc:Odbc:logic","scott","tiger");

                           
              Statement st=con.createStatement();
              String str = "select * from seats";
              ResultSet rs = st.executeQuery(str);

	out.print("</script></head><body>");
//out.print("	<html><head><script type=text/javascript>cc1=0;cc2=0;cc3=0;function changeimage1(){if (cc1==0)   {  cc1=1;  document.getElementById('myimage1').src=bulbon.gif;  }else  {  cc1=0;  document.getElementById('myimage1').src=bulboff.gif;  }	//return true;}function changeimage2(){if (cc2==0)   {  cc2=1;  document.getElementById('myimage2').src=bulbon.gif;  }else  {  cc2=0;  document.getElementById('myimage2').src=bulboff.gif;  }}function changeimage3(){if (cc3==0)   {  cc3=1;  document.getElementById('myimage3').src=bulbon.gif;  }else  {  cc3=0;  document.getElementById('myimage3').src=bulboff.gif;  }}function changeimage4(){var myjsp2call = test.jsp?param1=+cc1+&param2=+cc2+&param3=+cc3;window.location.href = myjsp2call;}");




      out.println("<p align=center><table border=2 bordercolor=blue cellpadding =10><tr></p>");
      		int cnt=1;
              while(rs.next())
              {
		
             		    out.print("<td><b>"+rs.getString("sno")+"</b></td>");
			     String s="";
				s=rs.getString("status").trim();	
			//	out.print(s);
			if(s.equals("0"))
			{ 
				out.print("test1");				  
out.print("<td><b></b>Booked</td>");							
   //out.print("<td><b></b><img id=myimage"+cnt+" onclick=changeimage"+cnt+"("+")"+" border=0 src=bulboff.gif width=100 height=180></td>");
			}
			else
			{
				//out.print("test2");				  
   out.print("<td><b></b><img id=myimage"+cnt+" onclick=changeimage"+cnt+"("+")"+" border=0 src=bulbon.gif width=100 height=180></td>");
	
			}
				
			cnt++;			
              }


              }
	      catch(Exception e)
		{
		out.print(e);
		}		
		          
%>
<img id="myimage4" onclick="changeimage4()" border="0" src="bulboff.gif" width="100" height="180" />


