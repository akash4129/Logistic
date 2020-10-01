<html> 
<head> 
<title>My first JSP page 
</title> 
</head> 
<body> 
<%@ page language="java" %> 
<% 
	String s=request.getParameter("na");
	out.println("<h1>From Computer Point Hello World</h1>");
	out.println("<h1>Your Name is "+s+"</h1>");

 %> 
</body> 
</html> 
