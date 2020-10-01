<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Free website template from 4Templates.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
	@import url("layout.css");
.style1 {font-size: x-large}
-->
</style>
<script language="javascript">
function validateForm()
{
	var x=document.forms["form1"]["textfield"].value;
	if (x=="")
  {
  alert("Customer Name must be filled out");
  return false;
  }

	var x=document.forms["form1"]["textfield2"].value;
	if (x=="")
  {
  alert("Address must be filled out");
  return false;
  }

	var x=document.forms["form1"]["textfield3"].value;
	if (x=="")
  {
  alert("Phone NO must be filled out");
  return false;
  }

	var x=document.forms["form1"]["textfield4"].value;
	if (x=="")
  {
  alert("Email ID  must be filled out");
  return false;
  }

	var x=document.forms["form1"]["textfield5"].value;
	if (x=="")
  {
  alert("Weight must be filled out");
  return false;
  }

}
</script>




</head>
<body>
<div id="wrapper">
	<div id="header">
		<h1>BellMonte<img src="images1/logic/page5_files/logo.JPG" width="71" height="55" /></h1>
		<h2>Carriers and Movers (Logistics Company)</h2>
  </div>
	<div id="main-menu">
		<ul>
			<li class="first"><a href="u.html" id="main-menu1" accesskey="1" title="">Back <a href="u.html" id="main-menu1" accesskey="1" title=""></a></li>
		    <span class="first"><a href="homepage.html" id="main-menu1" accesskey="1" title="">Signout</a></span>
		</ul>
  </div>
	<div id="content">
	  <div id="right">
<form id="form1" name="form1" method="get" action=""onsubmit="return validateForm()">
  <div align="center" class="style13">
    <h3 align="center" class="style12">&nbsp;</h3>
    <h3 align="center" class="style10 style1"><strong>Employee Expenses Page </strong></h3>
  </div>
  
    <table width="689" border="1">
      <tr>
        <td width="135" height="31"><div align="left" class="style4">Stafff Id </div></td>
          <td width="217"><label>
            <select name="textfield1" id="textfield1">
              <%@page import ="java.sql.*"%>
              <%
		
		 try
{
	        Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/logic","root","root"); 

	 
   Statement st=con.createStatement();
   ResultSet rs;
	  String sql="select eid  from  empreg " ;

//out.println(sql);
	  rs=st.executeQuery(sql);
	  int found=0;
	  while(rs.next())
	  {
	     String mfrom=rs.getString("eid").trim();
	
	 
	     %>
              <option value="<%out.println(mfrom);%>">
              <%out.println(mfrom);%>
              </option>
              <%  
	  }
	  rs.close();
      }
	  catch(Exception e)
    {
      out.println("Exception occured "+e);
    
	}
	  %>
            </select>
          </label></td>
          <td width="315" rowspan="6"><img src="images1/logic/logistics.jpg" width="280" height="274" /></td>
        </tr>
      <tr>
        <td class="style5">Date of Expense </td>
          <td><label>
            <input type="date" name="textfield2" />
          </label></td>
        </tr>
      <tr>
        <td class="style5">From</td>
          <td><label>
            <select name="select2">
              <option value="Chennai">Chennai</option>
              <option value="Bengaluru">Bengaluru</option>
              <option value="Mumbai">Mumbai</option>
              <option value="Mangalore">Mangalore</option>
              <option value="Cochin">Cochin</option>
              <option value="Vishakapatnam">Vishakapatnam</option>
            </select>
          </label></td>
        </tr>
      <tr>
        <td class="style6">To</td>
          <td><label>
            <select name="select">
              <option value="Chennai">Chennai</option>
              <option value="Bengaluru">Bengaluru</option>
              <option value="Mumbai">Mumbai</option>
              <option value="Mangalore">Mangalore</option>
              <option value="Cochin">Cochin</option>
              <option value="Vishakapatnam">Vishakapatnam</option>
            </select>
          </label></td>
        </tr>
      <tr>
        <td class="style6">Amt</td>
          <td>
            <span class="style7">
              <label></label>
              <input type="text" name="textfield4" />
            </span></td>
        </tr>
      
      <tr>
        <td><label>
          <input name="Submit" type="submit" class="style5"  value="Submit" />
          </label></td>
          <td><label>
            <input name="Reset" type="submit" class="style5" id="Reset" value="Reset" />
            </label></td>
        </tr>
    </table>
</form>


<div align="center">
  <%
   if(request.getParameter("Submit")!= null)
	
   	{
try


		{
		
		Connection con;
	Statement st;
	ResultSet rs;
	ResultSetMetaData rmd;

		       Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/logic","root","mysql"); 
st=con.createStatement();
	

			String id=request.getParameter("textfield1");
            String dt=request.getParameter("textfield2");
			String  frm=request.getParameter("select2");
	
			
             String t=request.getParameter("select");
			String amt=request.getParameter("textfield4");

			
			
			 
			PreparedStatement pstmt=con.prepareStatement("insert into expense values(?,?,?,?,?)");
			pstmt.setString(1,id);
			pstmt.setString(2,dt);
			pstmt.setString(3,frm);
			pstmt.setString(4,t);
			pstmt.setString(5,amt);
			
								 			
			
			
			pstmt.executeUpdate();
				
                    
				
			pstmt.close();
		}
		catch(Exception e)
		{
			out.println("Error in connectivity"+e);
		}
}
%>
  
</div>
<h2>&nbsp;</h2>
	  </div>
	</div>
	<div id="footer">
	  <ul>
		  <li></li>
	  </ul>
	</div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		