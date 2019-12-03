<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css\bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
</head>
<body>
<%@ page import="com.app.Product,com.app.ProductDao,java.util.*" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
List<Product>list=ProductDao.getProduct();
request.setAttribute("list",list);%>


<c:forEach items="${list}" var="a">
<div class="col-4">
<img src="data:image/jpg;base64,${a.getBase64Image()}" width="100" height="200"/>
<br>
<h>ISBN:${a.getId()}</h>
<br>
<h>Title:${a.getTitle()}</h>
<br>
<h>Author:${a.getAuthor()}</h>
<br>
<h>Publisher:${a.getPublisher()}</h>
<br>
<h>Description:${a.getDescription()}</h>
<br>
<h>Price:${a.getPrice()}</h>
<br>
 <p><button>Add to Cart</button></p>
</div>


</c:forEach>

</body>
</html>