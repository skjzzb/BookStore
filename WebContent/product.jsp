<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="productsuccess.jsp" method="post">
<table>
<tr>
<td>ISBM</td><td><input type="number" name="id"></td>
</tr>
<tr>
<td>Title</td><td><input type="text" name="title"></td>
</tr>
<tr>
<td>Author</td><td><input type="text" name="author"></td>
</tr>
<tr>
<td>Publisher</td><td><input type="text" name="publisher"></td>
</tr>
<tr>
<td>Description</td><td><textarea  name="description" rows="5" cols="20"></textarea></td>
</tr>
<tr>
<td>Price</td><td><input type="number" name="price"></td>
</tr>
<tr>
<td>Image</td><td><input type="file" name="base64Image"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="ADD"></td>
</tr>

</table>

</form>

<a href="Viewproduct.jsp">View</a>

</body>
</html>