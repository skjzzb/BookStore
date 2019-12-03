<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="coustomers.UserDao,coustomers.Users,java.util.*"%>  
<jsp:useBean id="u" class="coustomers.Users"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  


boolean s=UserDao.login(u);  
  



if(s==true){  
out.print("Login SuccessFull");
}else{  
	out.print("Notlogin");  
}  
%> 
</body>
</html>